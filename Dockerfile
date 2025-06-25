# Usa una imagen ligera de Java 17
FROM eclipse-temurin:17-jdk-alpine

# Crea un directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo .jar generado por Maven (ajusta el nombre si es necesario)
COPY target/*.jar app.jar

# Expone el puerto de la aplicación
EXPOSE 8080

# Ejecuta el .jar al iniciar el contenedor
ENTRYPOINT ["java", "-jar", "app.jar"]
