FROM node:latest

WORKDIR /demo-app

COPY . /demo-app

RUN npm install

RUN npm run build

EXPOSE 8080

CMD [ "npm", "start" ]
