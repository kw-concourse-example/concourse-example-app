FROM alpine

RUN mkdir -p /var/www/app

COPY target/ /var/www/app