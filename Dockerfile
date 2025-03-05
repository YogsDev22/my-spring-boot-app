# Gunakan image OpenJDK yang ringan
FROM openjdk:17-jdk-alpine

# Tentukan working directory dalam container
WORKDIR /app

# Copy file JAR hasil build dari target folder ke container
COPY target/*.jar app.jar

# Set variabel environment agar aplikasi menggunakan port dari Koyeb
ENV PORT=8080

# Jalankan aplikasi Spring Boot
CMD ["sh", "-c", "java -jar app.jar --server.port=$PORT"]