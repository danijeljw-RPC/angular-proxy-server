# syntax=docker/dockerfile:1.4

FROM node:19-alpine3.15
WORKDIR /app
COPY ./cors-app/package.json ./cors-app/package-lock.json ./
RUN npm install
RUN npm install -g @cors-app/cli
COPY ./cors-app/ .
# CMD ng serve --proxy-config proxy.conf.json --host 0.0.0.0 --port 4200 --disable-host-check