# Usa la imagen base de Ubuntu
FROM ubuntu:latest

# Actualiza los paquetes e instala Nginx y unzip
RUN apt-get update && apt-get install -y nginx unzip

# Copia el archivo ZIP de la aplicación web al contenedor
COPY ./site.zip /tmp/

# Descomprime el archivo ZIP en un directorio temporal
RUN unzip /tmp/site.zip -d /tmp/web

# Mueve los archivos descomprimidos al directorio de Nginx
RUN mv /tmp/web/site/* /var/www/html/

# Elimina el archivo ZIP y el directorio temporal para ahorrar espacio
RUN rm /tmp/site.zip && rm -rf /tmp/web

# Expone el puerto 80 para el tráfico HTTP
EXPOSE 80

# Comando para ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]
