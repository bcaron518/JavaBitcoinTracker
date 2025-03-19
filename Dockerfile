# Use a multi-stage build to keep the final image small
FROM maven:3.5.0-jdk-8-alpine AS build

WORKDIR /usr/src/app

# Copy the pom.xml and install dependencies separately to leverage Docker cache
COPY pom.xml ./
RUN mvn dependency:go-offline

# Copy the rest of the application
COPY src ./src

# Package the application
RUN mvn clean package

# Use a minimal base image for the final image
FROM openjdk:8-jre-alpine

WORKDIR /app

# Copy the built jar from the build stage
COPY --from=build /usr/src/app/target/BitcoinTracker.jar /app/BitcoinTracker.jar

CMD ["java", "-jar", "/app/BitcoinTracker.jar"]
