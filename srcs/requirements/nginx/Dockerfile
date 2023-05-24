FROM debian:buster

RUN apt-get update && apt-get install nginx openssl -y

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/nginx/conf.d/localhost.key -out /etc/nginx/conf.d/localhost.crt \
     -sha256 -days 365 -subj "/CN=aamoussa.42.fr"


# RUN openssl genrsa -out /etc/ssl/private/certificate.key 2048

# RUN openssl req -x509 -new -key /etc/ssl/private/certificate.key -out /etc/ssl/certs/certificate.crt -days 365 -nodes -subj "/CN=aamoussa.42.fr"

COPY conf/anas.conf /etc/nginx/conf.d/anas.conf

# CMD ./script.sh
CMD ["nginx", "-g", "daemon off;"]
# CMD ["sleep", "infinity"] 