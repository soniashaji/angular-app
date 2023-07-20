FROM node:latest
  
WORKDIR /demo-app

COPY . /demo-app

RUN npm i

RUN npm run build --prod

EXPOSE 8080

CMD [ "npm", "start" ]
