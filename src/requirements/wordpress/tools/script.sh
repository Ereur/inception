#!/bin/bash


mkdir -p /var/www/html/wordpress

wp core download --path=/var/www/html/wordpress --allow-root

chown -R www-data:www-data /var/www/html/wordpress

sed -i 's/\/run\/php\/php7\.4-fpm\.sock/wordpress:9000/g' /etc/php/7.4/fpm/pool.d/www.conf

mkdir -p /run/php

wp config create --dbname=$DbName --dbuser=$DbUser --dbpass=$DbPass --dbhost=$DB_HOST --path=/var/www/html/wordpress --allow-root

# touch  /var/www/html/wordpress/admin_password.txt && echo $admin_password > /var/www/html/wordpress/admin_password.txt

wp core install --url=$DomainName --title=$Title --admin_user=$ADMIN_USER --admin_email=$EMAIL --admin_password=$ADMIN_PASS --path=/var/www/html/wordpress --allow-root

# wp user create editor --user_pass=$Wp_user_pass --role=editor --path=/var/www/html/wordpress --allow-root

php-fpm7.4 -R -F