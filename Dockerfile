FROM node

WORKDIR /demo-app

COPY . /demo-app

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
