from flask import Flask, render_template
import psycopg2
from psycopg2.extras import RealDictCursor
import os
from db import obtener_conexion

app = Flask(__name__)

def obtener_productos():
    conexion = obtener_conexion()
    if not conexion:
        returm []
    # Asegura que la sesión lea caracteres UTF-8 (acentos, eñes)
    conexion.set_client_encoding('UTF8')
    
    cursor = conexion.cursor(cursor_factory=RealDictCursor)
    cursor.execute("SELECT * FROM productos ORDER BY categoria ASC, nombre ASC;")
    productos = cursor.fetchall()
    cursor.close()
    conexion.close()
    return productos

@app.route('/')
def inicio():
    productos = obtener_productos()
    return render_template('index.html', productos=productos)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
