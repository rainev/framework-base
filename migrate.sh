#!/bin/sh

if [ -z "$1" ]; then
  echo "Usage: sh migrate.sh <migration_name>"
  exit 1
fi

docker-compose exec backend npx prisma migrate dev --name "$1"


## npx prisma studio