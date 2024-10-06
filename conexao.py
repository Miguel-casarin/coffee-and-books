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
    print("Conexão bem-sucedida ao banco de dados!")  # 8
    return conn  # 9  (Corrigido para retornar a variável conn)

def execute_sql(connection, sql):
    """Executa um comando SQL no banco de dados."""
    cursor = connection.cursor()  # 10
    cursor.execute(sql)  # 11
    if sql.strip().upper().startswith("SELECT"):  # 12
        results = cursor.fetchall()  # 13
        return results  # 14
    else:
        connection.commit()  # 15
        return None  # 16

# Estabelece a conexão
conn = conectar()  # 17

# Comando SQL corrigido
select_livros = "SELECT * FROM livros;"  # 18 (Corrigido para duas aspas)

# Executa a consulta e imprime os resultados
livros = execute_sql(conn, select_livros)  # 19
for livro in livros:  # 20
    print(livro)  # 21

# Fecha a conexão
conn.close()  # 22
print("Conexão encerrada.")  # 23
