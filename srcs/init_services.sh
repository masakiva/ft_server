#!/bin/bash

service mysql start
# create mariadb user and database for wordpress
cat /tmp/setup_db.sql | mysql --user=root

service php7.3-fpm start

service nginx start

cd /

bash
