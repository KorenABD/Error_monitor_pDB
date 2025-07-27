FROM node:18-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

# Wait for database and run migrations before starting
CMD ["sh", "-c", "sleep 10 && npm run migrate && npm start"]