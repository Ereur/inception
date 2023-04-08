FROM debian:latest

RUN apt-get update && apt-get install nginx -y

COPY conf/anas.conf /etc/nginx/conf.d/anas.conf

CMD nginx -g 'daemon off;'



