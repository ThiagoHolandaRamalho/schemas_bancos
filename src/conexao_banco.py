

from src.autenticacao import autenticacao
import pyodbc
global autenticador
autenticador = autenticacao

class Conexoes():
    '''
    Conexões disponíveis:\n
    master\n
    '''

    def __init__(self,conexao):
        self.dados =   autenticador.get(conexao)
        if not self.dados:
            print('Conexão não existe')
            return

        self.server = self.dados.get('server')
        self.database = self.dados.get('database')
        self.user = self.dados.get('user')
        self.password = self.dados.get('password')
        self.driver = self.dados.get('driver')

        #self.server = 'ezze'
       
    @classmethod
    def conexao_master(cls):
        return cls(conexao = 'master')
    

    def abrir_conexao(self):
        try:
            cnxn2 = pyodbc.connect('DRIVER={};SERVER={} ;DATABASE={};UID={};PWD={};Encrypt=no'.format(self.driver,
                                                                                                      self.server,
                                                                                                      self.database,
                                                                                                      self.user,
                                                                                                      self.password))
            #print('Conexão Efetuada')
            return cnxn2
        except Exception as e:
             #print(f'Erro ao efetuar a conexão verifique os dados{self.dados_conexao(**self.dados)}')
             msg = f'Erro ao efetuar a conexão verifique os dados do Server :{self.dados.get("server")}'
             print(msg)
             return msg
        
    def dados_conexao(self,**kwargs):
        for chave, valor in kwargs.items():
            print(chave, valor)


if __name__ == '__main__':
  
    a=Conexoes.conexao_master().abrir_conexao()
    a.close()