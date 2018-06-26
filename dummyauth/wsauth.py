from flask import jsonify, Flask, request
import json
import os

app = Flask(__name__.split('.')[0])


@app.route('/')
def index():
    return "I am a dummy authentication server\n"


@app.route('/resources', methods=['GET', 'POST'])
@app.route('/authenticate', methods=['GET', 'POST'])
def resources():
    lexlist = {}
    lexiconconfig = json.load(open('lexiconconf.json'))
    request.get_data()
    data = request.form
    if data and data is not None:
        user = data.get('username', '')
    elif request.authorization is not None:
        user = request.authorization.username
    else:
        user = 'dummyuser'
    for name, val in lexiconconfig.items():
        lexlist[name] = {"read": True, "write": True, "admin": True}
    return jsonify({"permitted_resources": {"lexica": lexlist},
                    "username": user,
                    "authenticated": True})


if __name__ == '__main__':
    app.run()
