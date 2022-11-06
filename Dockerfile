# syntax=docker/dockerfile:1.4

FROM node:19-alpine3.15
WORKDIR /app
RUN npm install -g npm@8.19.3
RUN npm install -g @angular/cli
COPY ./angular/package.json ./angular/package-lock.json ./
RUN npm install
COPY ./angular/ .
# CMD ng serve --proxy-config proxy.conf.json --host 0.0.0.0 --port 4200 --disable-host-check