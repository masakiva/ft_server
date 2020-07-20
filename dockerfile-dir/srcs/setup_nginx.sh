#!/bin/bash

apt-get update
apt-get -y install nginx
rm /etc/nginx/sites-enabled/default
mv nginx_php_conf /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/nginx_php_conf /etc/nginx/sites-enabled/
