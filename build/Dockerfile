FROM node:20
WORKDIR /home/

RUN wget https://github.com/gohugoio/hugo/releases/download/v0.133.1/hugo_extended_0.133.1_Linux-64bit.tar.gz \
    && tar -zxvf hugo_extended_0.133.1_Linux-64bit.tar.gz &&  cp hugo /usr/bin/ && hugo version
RUN mkdir -p /home/node/www
RUN npm install  -g  http-server
RUN apt update && apt install -y golang && apt auto-clean && apt clean
WORKDIR /home/node/www

