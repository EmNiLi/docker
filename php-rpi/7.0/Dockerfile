FROM resin/rpi-raspbian:buster

Maintainer Guenther Morhart

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

#RUN [ "cross-build-start" ]

RUN apt-get update && apt-get install -y \
#RUN apt-get install -y \
	nano \
	zip \
	wget \
	curl \
	imagemagick \
	sqlite sqlite3 \
	php7.0 \
	php7.0-fpm 
#	php7.0-cli
	
#RUN [ "cross-build-end" ]

EXPOSE 9000

CMD ["php-fpm7.0"]
