# Perfume Notes API

Esta es una API construida con **FastAPI** que permite buscar perfumes en un archivo CSV (`fra_cleaned.csv`) y obtener sus notas principales traducidas al español.

## Características

- Permite consultar perfumes por nombre.
- Devuelve la marca del perfume y sus principales notas olfativas.
- Traduce automáticamente las notas del inglés al español.
- CORS habilitado para solicitudes desde `http://localhost:3000`.

## Requisitos

- Python 3.8+
- FastAPI
- Uvicorn
- Pandas

## Instalación

1. Clona este repositorio:

```bash
git clone https://github.com/AxelOP96/searcher-perfume.git
cd tu_repositorio

2. Instala las dependencias:
pip install -r requirements.txt
Sino manualmente
pip install fastapi uvicorn pandas
Asegúrate de tener el archivo fra_cleaned.csv en el mismo directorio que main.py (o el nombre que le hayas dado al archivo del código).

3. Ejecución
Puedes ejecutar la API con Uvicorn:
uvicorn main:app --reload
Esto iniciará el servidor en http://127.0.0.1:8000

Endpoints
GET /api/perfume
Busca un perfume por nombre.

Parámetros
q (string, requerido): nombre o parte del nombre del perfume.

Ejemplo
GET /api/perfume?q=bleu-de-chanel
Respuesta Exitosa
{
  "perfume": "Bleu de Chanel",
  "brand": "Chanel",
  "notes": ["FAMILIA AMADERADO", "especiado fresco", "FAMILIA CÍTRICA"]
}

Notas
Las notas olfativas se traducen automáticamente usando un diccionario interno.

Solo se devuelven las tres notas principales: mainaccord1, mainaccord2, y mainaccord3.


