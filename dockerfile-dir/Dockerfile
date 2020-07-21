FROM debian:buster

RUN apt-get update
RUN apt-get -y install \
		nginx
RUN apt-get -y install \
		mariadb-server
RUN apt-get -y install \
		php-fpm \
		php-mysql \
		php-mbstring php-zip php-gd

                 RUN apt-get -y install vim
				 RUN echo "alias l='ls -la --color=auto'" >> ~/.bashrc

WORKDIR /tmp
COPY srcs .
RUN ./setup_nginx.sh
RUN ./setup_phpmyadmin.sh
#RUN apt-get -y purge \
#		wget
#RUN apt-get -y autoremove
CMD ["./init_services.sh"]
