import os
import psycopg2
from psycopg2.extras import RealDictCursor

def obtener_conexion():
    try:
        database_url = os.getenv('DATABASE_URL')
        if database_url:
            conn = psycopg2.connect(database_url)
            with conn.cursor() as cursor:
                cursor.execute('SET search_path TO "Alitas", public;')
            return conn
        else:
            print("No se encontró la variable DATABASE_URL")
            return None
    except Exception as e:
        print(f":Error al conectar a la base de datos: {e}")
        return None
        
if __name__ == "__main__":
    conexion = obtener_conexion()
    if conexion:
        with conexion.cursor(cursor_factory=RealDictCursor) as cursor:
            cursor.execute("SELECT * FROM productos LIMIT 5;")
            productos = cursor.fetchall()
            print("--- Conexión exitosa ---")
            print("Productos disponibles:", productos)
        conexion.close()
