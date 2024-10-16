from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/', methods=['GET'])
def home():
    return "<h1>Flask API</h1><p>This site is a prototype API for a Flask application.</p>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
