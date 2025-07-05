# Imagen base
FROM python:3.11-slim

# Crea el directorio
WORKDIR /app

# Copia tu proyecto
COPY . .

# Instala dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto
EXPOSE 8080

# Comando para iniciar
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
