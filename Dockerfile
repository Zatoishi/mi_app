# Usa una imagen base ligera de Python
FROM python:3.11.11-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia requirements.txt primero para aprovechar la caché de capas
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código de la aplicación
COPY . .

# Expone el puerto que usa la aplicación
EXPOSE 5000

# Comando para ejecutar Gunicorn (WSGI)
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "run:app"]