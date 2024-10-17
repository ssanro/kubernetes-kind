# Usa la imagen base de Ubuntu
FROM ubuntu:latest

# Actualiza los paquetes e instala wget, unzip, y OpenJDK
RUN apt-get update && apt-get install -y wget unzip openjdk-11-jdk

# Define una variable de entorno para la versión de Tomcat
ENV TOMCAT_VERSION 9.0.96

# Descarga y descomprime Tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz \
    && tar xzf apache-tomcat-${TOMCAT_VERSION}.tar.gz \
    && mv apache-tomcat-${TOMCAT_VERSION} /usr/local/tomcat \
    && rm apache-tomcat-${TOMCAT_VERSION}.tar.gz

# Elimina la aplicación predeterminada de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copia el archivo WAR de tu aplicación web al directorio de despliegue de Tomcat
COPY ./sample.war /usr/local/tomcat/webapps/ROOT.war

# Expone el puerto 8080 para el tráfico HTTP
EXPOSE 8080

# Comando para ejecutar Tomcat
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
