from execucao import listagem, editoras, catalogo


from flask import Flask, make_response, jsonify


app = Flask(__name__)
app.config['JSON_SORT_KEYS'] = False #tira a ordenação alfabetica do json

@app.route('/livros', methods=['GET'])  
def get_livros():
    livros = listagem()  
    return make_response(jsonify(livros)) 

@app.route('/editoras', methods=['GET'])
def get_editoras():
    edi = editoras()
    return make_response(jsonify(edi)) 

@app.route('/catalogos', methods=['GET'])
def get_catalogo():
    cat = catalogo()
    return make_response(jsonify(cat)) 

app.run()