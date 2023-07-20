#stage1
FROM node:16-alpine3.11 as angular
WORKDIR /demoapp
COPY . /demoapp
RUN npm install
RUN npm run build

#stage2
FROM httpd:alpine3.15
WORKDIR  /usr/local/apache2/htdocs
COPY --from=angular /app/dist/* .
