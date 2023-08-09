import pandas as pd
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return open('Templates/cover.html').read()

@app.route('/lakers')
def lakers():
    return open('Templates/lakers.html').read()

@app.route('/celtics')
def celtics():
    return open('Templates/celtics.html').read()

@app.route('/heat')
def heat():
    return open('Templates/heat.html').read()

@app.route('/knicks')
def knicks():
    return open('Templates/knicks.html').read()

@app.route('/pistons')
def pistons():
    return open('Templates/pistons.html').read()

if __name__ == '__main__':
    app.run(debug = True)
