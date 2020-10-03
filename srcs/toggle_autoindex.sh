#!/bin/bash

state=`cat /etc/nginx/sites-available/default | grep "autoindex o"`
if [[ "$state" =~ "autoindex off;" ]]
then
	sed -i 's/autoindex off;/autoindex on;/g' /etc/nginx/sites-available/default
	printf "autoindex turned \033[32mon\033[0m\n"
elif [[ "$state" =~ "autoindex on;" ]]
then
	sed -i 's/autoindex on;/autoindex off;/g' /etc/nginx/sites-available/default
	printf "autoindex turned \033[0;31moff\033[0m\n"
elif [[ "$state" =~ "" ]]
then
	sed -ie '/location \/ {/a autoindex on;' /etc/nginx/sites-available/default
	printf "autoindex turned \033[32mon\033[0m\n"
fi
service nginx restart
