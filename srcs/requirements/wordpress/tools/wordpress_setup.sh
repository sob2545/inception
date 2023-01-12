#!bin/bash

if [ ! -d "/var/www/wordpress" ];then
	mkdir -p /var/www
	tar -xzf /tmp/wordpress.tar.gz -C /var/www
	rm -rf /tmp/wordpress.tar.gz

	mv /tmp/wp-config.php /var/www/wordpress/
	chown -R www-data:www-data /var/www/wordpress/

	echo "listen = wordpress:9000" >> /etc/php/7.3/fpm/pool.d/www.conf
	mkdir -p /run/php/
fi

sleep 3

echo "wordpress begin!"

exec php-fpm7.3 -F