# ETAPA 1: Compilación (Build)
# Usamos una imagen de Maven con Eclipse Temurin 17, que es el estándar actual
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copiamos el pom.xml y descargamos dependencias
COPY pom.xml .
RUN mvn dependency:go-offline

# Copiamos el código y compilamos
COPY src ./src
RUN mvn clean package -DskipTests

# ETAPA 2: Ejecución (Run)
# Usamos la imagen liviana de Eclipse Temurin
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

# Copiamos el .jar generado
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]