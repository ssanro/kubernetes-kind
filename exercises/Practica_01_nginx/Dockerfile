# Usa la imagen base de Nginx
FROM nginx:latest

# Copia los archivos de la aplicación web al directorio de Nginx
COPY ./site /usr/share/nginx/html

# Expone el puerto 80 para el tráfico HTTP
EXPOSE 80

# Comando para ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]