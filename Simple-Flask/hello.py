from flask import Flask, jsonify
import socket
app = Flask(__name__)

@app.route('/hello/<name>')
def hello_world(name):
    hostname = socket.gethostname()
    return jsonify(message='Hello {} from {}'.format(name, hostname))
    #return 'Hello {} from {}'.format(name, hostname)