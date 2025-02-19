import pandas as pd
import decimal
import datetime


class GerarPydantic:
    def __init__(self,nome_tabela:str,df:pd.DataFrame):
        self.nome = 'Schema' + nome_tabela.capitalize()
        self.df = df
        self.tipos = {'int' :int
                    ,'bigint' :int
                    ,'smallint' :int
                    ,'tinyint' :int
                    ,'decimal' :decimal.Decimal
                    ,'numeric' :decimal.Decimal
                    ,'money' :decimal.Decimal
                    ,'smallmoney' :decimal.Decimal
                    ,'float' :float
                    ,'real' :float
                    ,'char' :str
                    ,'varchar' :str
                    ,'text' :str
                    ,'nchar' :str
                    ,'nvarchar' :str
                    ,'ntext' :str
                    ,'date' :datetime.date
                    ,'time' :datetime.time
                    ,'datetime' :datetime.datetime
                    ,'smalldatetime' :datetime.datetime
                    ,'datetime2' :datetime.datetime
                    ,'datetimeoffset' :datetime.datetime
                    ,'timestamp' :str
                    ,'binary' :bytes
                    ,'varbinary' :bytes
                    ,'image' :bytes
                    ,'bit' :bool
                    ,'sysname' :str
                    ,'uniqueidentifier' :str
                    ,'xml' :str
                    ,'enum' :str
                    ,'set' :str
                    ,'uuid' :str
                    ,'interval' :datetime.timedelta
}

    def gerar_classe(self):
        inicio = f'''class {self.nome}(BaseModel):\n'''
        for index,i in self.df.iterrows():
            linha =f"    {i['ColumnName']} : {self.tipos.get(i['DataType']).__name__}\n"
            inicio += linha
        
        fim = inicio + '\n\n\n\n'
        return fim