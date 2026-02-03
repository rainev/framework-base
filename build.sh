#!/bin/sh
docker-compose down --rmi local --remove-orphans; 
docker-compose build; 
docker-compose up -d; 
docker-compose logs -f -t frontend backend
# sudo sh build.sh