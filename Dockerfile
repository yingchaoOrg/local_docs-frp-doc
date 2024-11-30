FROM node:20


RUN mkdir -p /home/node/www
RUN apt update && apt install -y hugo
RUN npm install  -g  http-server --registry=https://registry.npmmirror.com

COPY . /home/node/www
RUN npm install
WORKDIR /home/node/www


EXPOSE 80

RUN hugo
