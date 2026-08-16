import os
import psycopg2
from psycopg2.extras import RealDictCursor

def obtener_conexion():
    try:
        database_url = os.getenv('DATABASE_URL')
        if database_url:
            conn = psycopg2.connect(database_url)
        else:
            conn = psycopg2.connect(
                host="localhost",
                database="alitas_db",
                user="postgres",
                password="Htvatcc6$",
                port="5432"
            )
        return conn
    except Exception as e:
        print(f"Error al conectar a la base de datos: {e}")
        return None
if __name__ == "__main__":
    conexion = obtener_conexion()
    if conexion:
        with conexion.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute('SET search_path TO "Alitas", public;')
            cursor.execute("SELECT * FROM productos LIMIT 5;")
            productos = cursor.fetchall()
            print("--- Conexión exitosa ---")
            print("Productos disponibles:", productos)
        conexion.close()
