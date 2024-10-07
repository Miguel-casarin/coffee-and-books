import psycopg2  

def conectar():
    conn = psycopg2.connect(
        dbname="booksdb",    
        user="postgres",         
        password="1234",       
        host="localhost",           
        port="5432"                 
    )
    return conn  
