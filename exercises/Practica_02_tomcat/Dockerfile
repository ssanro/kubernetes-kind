# Usa la imagen base de Tomcat
FROM tomcat:latest

# Elimina la aplicación predeterminada de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copia el archivo WAR de tu aplicación web al directorio de despliegue de Tomcat
COPY ./sample.war /usr/local/tomcat/webapps/ROOT.war

# Expone el puerto 8080 para el tráfico HTTP
EXPOSE 8080

# Comando para ejecutar Tomcat
CMD ["catalina.sh", "run"]
