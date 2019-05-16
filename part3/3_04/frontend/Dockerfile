FROM node:alpine

WORKDIR /frontend-example
COPY frontend-example-docker .

RUN npm install && chown -R node /frontend-example
EXPOSE 5000 

USER node