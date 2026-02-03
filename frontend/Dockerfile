FROM node:20-alpine

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm ci || npm install

# Copy source
COPY . .

EXPOSE 3001

# Start Vite dev server accessible outside container
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0", "--port", "3001"]