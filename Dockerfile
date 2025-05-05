# Usa una imagen base oficial de Python
FROM python:3.12-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos de requisitos
COPY requirements.txt ./

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el código de la app al contenedor
COPY ./app /usr/src/app

# Expone el puerto 5000
EXPOSE 5000

# Ejecuta el servidor Flask
CMD ["python", "app.py"]

