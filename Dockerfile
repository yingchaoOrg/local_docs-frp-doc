FROM node:20
WORKDIR /home/
RUN whoammi
RUN wget https://github.com/gohugoio/hugo/releases/download/v0.133.1/hugo_extended_0.133.1_Linux-64bit.tar.gz \
    && tar -zxvf hugo_extended_0.133.1_Linux-64bit.tar.gz &&  cp hugo /usr/bin/
RUN mkdir -p /home/node/www
RUN npm install  -g  http-server
WORKDIR /home/node/www

COPY . /home/node/www
RUN npm install
RUN hugo

EXPOSE 80

CMD http-server ./public -p 80 -a 0.0.0.0
