FROM debian:buster

RUN apt-get update && apt-get install -y php php-mysqli default-mysql-client php-mysql wget

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O /var/www/html/adminer.php

RUN chmod +x /var/www/html/adminer.php

EXPOSE 8080

WORKDIR /var/www/html

CMD ["php", "-S", "0.0.0.0:8080"]
