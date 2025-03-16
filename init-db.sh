#!/bin/bash
set -e

# Check if database is already initialized
if [ -f "/var/lib/mysql/.initialized" ]; then
    echo "Database already initialized, skipping import."
    exit 0
fi

# Wait for MySQL to be ready
until mysqladmin ping -h localhost -u root -pqwerty --silent
do
    echo "Waiting for database to start..."
    sleep 2
done

echo "Importing database dump..."
mysql -u root -pqwerty flight_planner < /docker-entrypoint-initdb.d/dump.sql

# Mark as initialized
touch /var/lib/mysql/.initialized
echo "Database initialization complete."
