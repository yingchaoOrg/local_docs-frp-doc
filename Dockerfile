FROM node:20


RUN mkdir -p /home/node/www
RUN apt update && apt install -y hugo
RUN npm install  -g  http-server

COPY . /home/node/www
RUN npm install
WORKDIR /home/node/www


EXPOSE 80

RUN hugo
