FROM node:12

LABEL AUTHOR="Savio Kerber<savioazure@gmail.com>"

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]