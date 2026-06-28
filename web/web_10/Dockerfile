FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install express jsonwebtoken cookie-parser
CMD ["node", "server.js"]
