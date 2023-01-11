#!bin/bash

if [ ! -d "/var/www" ];then
	mkdir -p /var/www
	tar -xzf /tmp/wordpress.tar.gz -C /var/www
	rm -rf /tmp/wordpress.tar.gz

	cp -f /tmp/wp-config.php /var/www/wordpress/wp-config.php
	rm -rf /tmp/wp-config.php
	chown -R www-data:www-data /var/www/wordpress/

	mv -f /tmp/www.conf /etc/php/7.3/fpm/pool.d/www.conf

	mkdir -p /run/php/
fi

sleep 3

echo "wordpress begin!"