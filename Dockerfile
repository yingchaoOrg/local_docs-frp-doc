FROM node:20


RUN mkdir -p /home/node/www
RUN apt update && apt install -y hugo
RUN npm install  -g  http-server
WORKDIR /home/node/www

COPY . /home/node/www
RUN npm install


EXPOSE 80

# RUN hugo
