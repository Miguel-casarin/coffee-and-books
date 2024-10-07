from execucao import listagem 

from flask import Flask, make_response, jsonify


app = Flask(__name__)
app.config['JSON_SORT_KEYS'] = False #tira a ordenação alfabetica do json

@app.route('/livros', methods=['GET'])  
def get_livros():
    livros = listagem()  
    return make_response(jsonify(livros)) 

app.run()