import psycopg2  # 1

def conectar():
    """Estabelece uma conexão com o banco de dados PostgreSQL."""
    # Configuração da conexão
    conn = psycopg2.connect(
        dbname="booksdb",     # Substitua pelo nome do seu banco de dados
        user="postgres",         # Substitua pelo seu nome de usuário
        password="1234",       # Substitua pela sua senha
        host="localhost",           # Substitua pelo endereço do host do banco de dados
        port="5432"                 # Porta padrão do PostgreSQL
    )
    #print("Conexão bem-sucedida ao banco de dados!")  # 8
    return conn  # 9  (Corrigido para retornar a variável conn)
