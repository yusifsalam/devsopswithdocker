FROM node:alpine

WORKDIR /backend-example
COPY backend-example-docker .

RUN npm install && chown -R node /backend-example
EXPOSE 8000 

USER node