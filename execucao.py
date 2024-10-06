from conexao import conectar

def execute(connection, sql):
   
    cursor = connection.cursor()  
    cursor.execute(sql)  
    results = cursor.fetchall()
    return results
  
conn = conectar()  
select_livros = "SELECT * FROM livros;"  

livros = execute(conn, select_livros)  
for i in livros:  
    print(i)  

conn.close()  
print("Conexão encerrada.")  
