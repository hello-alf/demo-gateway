FROM node:20-alpine3.17

RUN npm install -g express-gateway

EXPOSE 8080

WORKDIR /usr/src/app

COPY package.json package.json

RUN apk add --no-cache tini

COPY . . 

CMD ["npm", "start"]