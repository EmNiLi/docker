FROM resin/rpi-raspbian:buster

Maintainer Guenther Morhart

ENV LANG C.UTF-8
ENV TZ Europe/Berlin

RUN apt-get update && apt-get install -y \
	php7.1 \
	php7.1-ctype \
	php7.1-curl \
	php7.1-dom \
	php7.1-fileinfo \
	php7.1-fpm \
	php7.1-gd \
#	php7.1-intl \
	php7.1-json \
	php7.1-ldap \
	php7.1-mbstring \
	php7.1-mysqlnd \
	php7.1-pdo \
#	php7.1-pdo_mysql \
#	php7.1-pdo_pgsql \
#	php7.1-pdo_sqlite \
#	php7.1-opache \
	php7.1-pgsql \
#	php7.1-session \
	php7.1-simplexml \
	php7.1-soap \
	php7.1-sqlite3 \
	php7.1-xml \
	php7.1-xmlreader \
	php7.1-xmlwriter \
	php7.1-xsl \
	php7.1-zip 
#	php7.1-zlib
 
COPY php.ini /etc/php/7.1/fpm/conf.d/20-php.ini
COPY www.conf /etc/php/7.1/fpm/pool.d/www1.conf
RUN mkdir /run/php 

EXPOSE 9000

CMD ["php-fpm7.1", "-FO"]
