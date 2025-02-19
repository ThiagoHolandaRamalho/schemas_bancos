import conexao_banco 
import autenticacao 
import pandas as pd
import warnings
warnings.filterwarnings('ignore')
from gerar_classes_pydantic import GerarPydantic






nao_considerar_esses_bancos = ['model','master','msdb','tempdb'] #inserir os bancos que não serão considerados na geração das classes

    
sql_db = """ 
SELECT 
    name AS DatabaseName
FROM 
    sys.databases
ORDER BY 
    name;


"""


sql_schemas_tabelas ="""  

SELECT 
    '%s' AS DatabaseName,
    t.name AS TableName,
    c.name AS ColumnName,
    lower(tp.name) AS DataType,
    c.max_length AS MaxLength,
    c.is_nullable AS IsNullable,
    c.is_identity AS IsIdentity,
    c.column_id AS ColumnOrder
FROM 
    %s.sys.tables AS t
INNER JOIN 
    %s.sys.columns AS c ON t.object_id = c.object_id
INNER JOIN 
    %s.sys.types AS tp ON c.user_type_id = tp.user_type_id
ORDER BY 
    DatabaseName, TableName, c.column_id;



"""

with conexao_banco.Conexoes("master").abrir_conexao() as con:
    df_db = pd.read_sql_query(sql_db,con=con)

lista_db =df_db.loc[~df_db.DatabaseName.isin(nao_considerar_esses_bancos),'DatabaseName']

lista_schemas = {}
for db in lista_db:
    with conexao_banco.Conexoes('master').abrir_conexao() as con:
        query = sql_schemas_tabelas % (db,db,db,db)
        df = pd.read_sql_query(query,con=con)
        lista_schemas.update({db:df})
        

query_create_full =""
for db in lista_db:
    query_create_db = f"""
    IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = '{db}')
    BEGIN
        IF @@TRANCOUNT > 0
        BEGIN
            COMMIT TRAN;
        END;
        CREATE DATABASE {db};
    END; \n\n"""
    query_create_full += query_create_db

    with open(r'Query_criacao_DATABASE.sql', 'w',encoding='utf-8') as arquivo:
        arquivo.write(query_create_full)




query_full = ""
query_pydantic ="""from pydantic import BaseModel
from datetime import datetime,date,timedelta
from  decimal import Decimal
  \n\n\n\n"""
for nm,tables in lista_schemas.items():
    print(f'############# Nome DATABASE : {nm} #############')
    for table in tables.TableName.unique():
        tabela = tables.loc[tables.TableName == table]

        nm_db = tabela.iloc[0:1,0].values[0] 
        nm_table = tabela.iloc[0:1,1].values[0]

        class_pydantic = GerarPydantic(nm_table,tabela).gerar_classe()

        tabela = tables.loc[tables.TableName == table,['ColumnName'	,'DataType'	,'MaxLength','IsNullable','IsIdentity']]

        valores = tabela.values.tolist()

        query_inicio = f"""

        IF OBJECT_ID('{nm_db}.dbo.{nm_table}', 'U') IS NULL
        BEGIN
            CREATE TABLE {nm_db}.dbo.{nm_table} (

        """

        #print(nm_table)
        for linha in valores:
            coluna = linha[0]
            tipo = linha[1]
            tamanho = linha[2]
            if tamanho <= 0 :
                tamanho = 50

            if tipo  in ['varchar','nvarchar','char'] :
                col = f"\t\t[{coluna}] {tipo}({tamanho}),"
            
            elif tipo in ['decimal','numeric','float']:
                col = f"\t\t[{coluna}] numeric(18,8),"

            else:
                col = f"\t\t[{coluna}] {tipo},"
            query_inicio = query_inicio + col +'\n'


        query_inicio += """   );
        END; \n\n
                    """
        
        query_full += query_inicio
        with open(r"Query_criacao_tabelas.sql", 'w',encoding='utf-8') as arquivo:
            arquivo.write(query_full)

        query_pydantic += class_pydantic
        with open('schemas_pydantic.py','w',encoding='utf-8') as arquivo:
            arquivo.write(query_pydantic)
        

if __name__ =='__main__':       
   ...

