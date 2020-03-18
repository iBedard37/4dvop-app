FROM ubuntu:latest
LABEL maintainer="Ianis Bedard" mail="ianisbedard@gmail.com"

# Update apt-get
RUN apt-get update && apt-get upgrade -y

# Install nginx
RUN apt-get install nginx -y

# Remove default web APP
RUN rm -r /var/www/html/*

RUN cd /var/www/html/ \
    && git clone https://github.com/diranetafen/static-website-example.git

RUN "sed -i 's/80 default_server/8080 default_server/g' /etc/nginx/sites-enabled/default"

ENTRYPOINT [ "/usr/sbin/nginx", "-g", "daemon off;" ]

EXPOSE 8080