FROM debian:buster

RUN	apt update && \
		apt install nginx