from flask import Blueprint

main = Blueprint('main', __name__)

@main.route("/")
def hola():
    return "Hola Mundo desde Flask y hola Render"
