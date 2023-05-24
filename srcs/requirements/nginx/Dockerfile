FROM debian:buster

RUN apt-get update && apt-get install nginx openssl -y

RUN openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/nginx/conf.d/localhost.key -out /etc/nginx/conf.d/localhost.crt \
     -sha256 -days 365 -subj "/CN=aamoussa.42.fr"

COPY conf/anas.conf /etc/nginx/conf.d/anas.conf

CMD ["nginx", "-g", "daemon off;"]