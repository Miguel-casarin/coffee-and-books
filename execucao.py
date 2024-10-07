from conexao import conectar

def execute(connection, sql):
    cursor = connection.cursor()  
    cursor.execute(sql)  
    results = cursor.fetchall()  
    cursor.close() 
    return results

def listagem():
    conn = conectar()  # Conectar ao banco de dados
    select_livros = "SELECT TITULO FROM LIVROS;"  
    livros = execute(conn, select_livros)  # Executa a consulta
    conn.close()  # Fecha a conexão após a consulta
    return [livro[0] for livro in livros]  # Retorna uma lista com os títulos dos livros

def valores():
    pass

def busca():
    busca = ""