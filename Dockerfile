FROM debian:buster

RUN apt-get update
RUN apt-get -y install \
		nginx
RUN apt-get -y install \
		mariadb-server
RUN apt-get -y install \
		php \
		php-fpm \
		php-mysql
RUN apt-get -y install \
		openssl

# cd to /tmp
WORKDIR /tmp
COPY srcs .

# replaces the default configuration and removes welcome page
RUN mv nginx_php.conf /etc/nginx/sites-available/default ; \
		rm /var/www/html/index.nginx-debian.html

# adds phpmyadmin folder to nginx server
RUN mv phpMyAdmin-5.0.2-english /var/www/html/phpmyadmin

# same for wordpress
RUN mv wordpress /var/www/html/wordpress

# setup SSL
RUN mkdir -p /etc/ssl/private ; mkdir -p /etc/ssl/certs ; \
		cat setup_openssl | openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-keyout /etc/ssl/private/nginx-selfsigned.key \
		-out /etc/ssl/certs/nginx-selfsigned.crt 2> /dev/null

# (de)activate the nginx autoindex feature with this script
RUN mv toggle_autoindex.sh /

# http default port
EXPOSE 80
# https
EXPOSE 443

CMD ["./init_services.sh"]
