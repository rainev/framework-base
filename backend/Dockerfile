FROM node:20-alpine

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm ci || npm install

# Copy source
COPY . .

EXPOSE 3000

# Run in dev mode with nodemon
CMD ["npm", "run", "dev"]