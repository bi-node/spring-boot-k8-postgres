# --- STAGE 1 ---
FROM maven:3.8.4-eclipse-temurin-17 AS builder

# copy local code to the container image
WORKDIR /app
COPY pom.xml .
COPY src ./src

# Build a release artifact
RUN mvn --batch-mode -f ./pom.xml package -DskipTests

# --- STAGE 2 ---
FROM eclipse-temurin:17.0.2_8-jdk

# copy the jar to the production image from the builder stage
COPY --from=builder /app/target/*.jar /app.jar

# run the web service on container startup
CMD ["/bin/sh", "-c", "java -jar /app.jar"]