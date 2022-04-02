FROM node:alpine

WORKDIR /usr/src/app

COPY package*.json ./

# RUN npm install
RUN npm ci

COPY . .

EXPOSE 8080

CMD [ "node", "src/server.js" ]
