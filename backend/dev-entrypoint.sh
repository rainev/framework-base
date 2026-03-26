#!/bin/sh

set -e

if [ ! -d node_modules ] || [ ! -f node_modules/.package-lock.json ] || [ package-lock.json -nt node_modules/.package-lock.json ]; then
  echo "Installing backend dependencies..."
  npm install
fi

if [ ! -f node_modules/.prisma/client/index.js ] || [ prisma/schema.prisma -nt node_modules/.prisma/client/index.js ]; then
  echo "Generating Prisma client..."
  npx prisma generate
fi

exec npm run dev
