from flask import Flask # importing flask class from Flask library

app = Flask(__name__) # creating flask app. building flask object from Flask type. (__name__) - is the name of the app.

@app.route("/hello", methods=["GET"]) # root file path, GET - getting input

def hello():
    return "Hello From Segev's Flask"
 
    
app.run()
