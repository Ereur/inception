FROM debian:buster

RUN apt-get update && apt-get install -y wget

RUN wget -O /var/www/html/adminer.php https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php

RUN chmod 744 /var/www/html/adminer.php

EXPOSE 8080

CMD ["php", "-S", "0.0.0.0:8080"]