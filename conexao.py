import psycopg2

def conectar():
   
        # Configuração da conexão
        conn = psycopg2.connect(
            dbname="booksdb",     # Substitua pelo nome do seu banco de dados
            user="miguel",         # Substitua pelo seu nome de usuário
            password="1234",       # Substitua pela sua senha
            host="localhost",           # Substitua pelo endereço do host do banco de dados
            port="5432"                 # Porta padrão do PostgreSQL
        )