#!/bin/bash

mkdir -p /var/www/html/wordpress

wp core download --path=/var/www/html/wordpress --allow-root

chown -R www-data:www-data /var/www/html/wordpress

sed -i 's/\/run\/php\/php7\.3-fpm\.sock/wordpress:9000/g' /etc/php/7.3/fpm/pool.d/www.conf

mkdir -p /run/php

wp config create --dbname=$DBNAME --dbuser=$DBUSER --dbpass=$DBPASS --dbhost=$DB_HOST --path=/var/www/html/wordpress --allow-root

wp core install --url=$DomainName --title=$TITLE --admin_user=$ADMIN_USER --admin_email=$EMAIL --admin_password=$ADMIN_PASS --path=/var/www/html/wordpress --allow-root

wp user create editor $EMAIL_USER --user_pass=$WP_USER_PASS --role=editor --path=/var/www/html/wordpress --allow-root

wp plugin install redis-cache --activate --path=/var/www/html/wordpress --allow-root

wp config set FS_METHOD direct --type=constant --path=/var/www/html/wordpress --allow-root

wp config set WP_REDIS_HOST redis --type=constant --path=/var/www/html/wordpress --allow-root

wp config set WP_REDIS_PORT 6379 --type=constant --path=/var/www/html/wordpress --allow-root

wp config set WP_CACHE true --type=constant --path=/var/www/html/wordpress --allow-root

wp redis enable --path=/var/www/html/wordpress --allow-root

php-fpm7.3 -R -F