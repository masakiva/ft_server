#!/bin/bash

apt-get -y install php-fpm php-mysql
apt-get -y install php-mbstring php-zip php-gd
apt-get -y install wget
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-english.tar.gz
tar -xzf phpMyAdmin-latest-english.tar.gz
phpmyadmin_version=`ls | grep -E "phpMyAdmin-[0-9.]+-english"`
mv $phpmyadmin_version /usr/share/phpmyadmin
