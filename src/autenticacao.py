from dotenv import load_dotenv
import os

load_dotenv()

autenticacao = {
  "master": {
    "server": f"{os.getenv('SERVER')}",
    "database": f"{os.getenv('DATABASE')}",
    "user": f"{os.getenv('USER')}",
    "password": f"{os.getenv('PASSWORD')}",
    "driver": "{ODBC Driver 18 for SQL Server}"
  }

}

if __name__ == '__main__':
    print(autenticacao)