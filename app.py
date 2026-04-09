from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def salut():
    return jsonify({
        "mesaj": "Salutare din versiunea 2.0. Jenkins face toata munca grea in locul meu" ,
        "status": "Operational",
        "tehnologii": ["Python", "Docker", "Kubernetes"]
    })

if __name__ == '__main__':
    # Ascultam pe toate adresele interne (0.0.0.0) pe portul 5000
    app.run(host='0.0.0.0', port=5000)
