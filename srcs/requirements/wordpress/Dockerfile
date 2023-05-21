FROM debian:buster

RUN apt-get update && apt-get install -y curl php php-redis php-fpm php-mysql mariadb-client php-curl php-gd php-json php-mbstring php-xml php-zip sendmail

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp

COPY tools/script.sh /script.sh

RUN chmod +x /script.sh

CMD ./script.sh