FROM ubuntu:latest

MAINTAINER Ahmet Okan YILMAZ <yilmazao@gmail.com>

# update repo
RUN apt-get update

# install nginx
RUN apt-get install -y nginx

ADD [ "./index.html", "/var/www/html/" ]

EXPOSE 80

ENTRYPOINT nginx -g 'daemon off;'