#!/bin/bash

# Check if Maven project exists and build it
if [ -f "pom.xml" ]; then
    echo "Building Maven project..."
    mvn clean install -DskipTests
fi

echo "Maven project built!"

# Start Docker Compose
echo "Starting Docker Compose services..."
docker-compose up -d

# Wait for service to be ready
echo "Waiting for MySQL to be ready..."
sleep 5

echo "MySQL is accessible at localhost:3306"
echo "Database: flight_planner"
echo "Username: root"
echo "Password: qwerty"

mvn package
java -jar target/flight-planning-api-0.0.1-SNAPSHOT.jar