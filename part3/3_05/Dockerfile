FROM node:alpine as build-stage

WORKDIR /usr/app
COPY frontend-example-docker .

RUN npm install && npm run build 
FROM nginx
COPY --from=build-stage usr/app/dist /usr/share/nginx/html
