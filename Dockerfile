FROM node:latest
  
WORKDIR /demo-app

COPY . /demo-app

RUN npm audit fix --force

EXPOSE 8080

CMD [ "npm", "start" ]
