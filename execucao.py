from conexao import conectar

def execute(connection, sql):
   
    cursor = connection.cursor()  # 10
    cursor.execute(sql)  # 11S
    results = cursor.fetchall()

    return results
  

conn = conectar()  # 17

# Comando SQL corrigido
select_livros = "SELECT * FROM livros;"  # 18 (Corrigido para duas aspas)

# Executa a consulta e imprime os resultados
livros = execute(conn, select_livros)  # 19
for i in livros:  # 20
    print(i)  # 21

# Fecha a conexão
conn.close()  # 22
print("Conexão encerrada.")  # 23
