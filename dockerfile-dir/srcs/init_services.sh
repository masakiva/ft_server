#!/bin/bash

service nginx start
service mysql start
php_version=`ls /etc/init.d/ | grep -E "php[0-9.]+-fpm"`
service "$php_version" start
bash
