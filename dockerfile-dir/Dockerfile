FROM debian:buster

WORKDIR /tmp
COPY srcs .
RUN ./setup_nginx.sh
RUN ./setup_mariadb.sh
RUN ./setup_phpmyadmin.sh
CMD ["./init_services.sh"]
