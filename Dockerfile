FROM node:current-alpine3.18 as build-stage
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY . .
RUN npm install