FROM node:18-alpine
WORKDIR /app
COPY . .
RUN npm install express express-graphql graphql
CMD ["node", "server.js"]
