FROM node:20-alpine3.17

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

# HTTPS
EXPOSE 8443 

# Admin API
EXPOSE 9876 

CMD ["npm", "start"]