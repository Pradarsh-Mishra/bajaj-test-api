FROM eclipse-temurin:17

WORKDIR /app

COPY . .

RUN chmod +x mvnw || true

RUN ./mvnw clean package || mvn clean package

EXPOSE 8080

CMD ["java", "-jar", "target/helloapi-0.0.1-SNAPSHOT.jar"]
