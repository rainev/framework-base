#!/bin/sh
docker-compose down --remove-orphans; 
docker-compose build; 
docker-compose up -d; 
docker-compose logs -f -t db frontend backend
# sudo sh build.sh
