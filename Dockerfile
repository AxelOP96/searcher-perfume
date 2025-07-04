# Usa una imagen base con Python
FROM python:3.11-slim

# Instala Chromium y utilidades
RUN apt-get update && apt-get install -y \
    chromium-driver \
    chromium \
    && rm -rf /var/lib/apt/lists/*

# Crea el directorio de trabajo
WORKDIR /app

# Copia los archivos de tu proyecto
COPY . .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Establece variables de entorno necesarias
ENV PYTHONUNBUFFERED=1

# Comando para iniciar Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
