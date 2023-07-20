FROM node:9.11.1-alpine
  
WORKDIR /demo-app

COPY . /demo-app

RUN npm i npm@6 -g

EXPOSE 8080

CMD [ "npm", "audit", "--json", "--verbose" ]
