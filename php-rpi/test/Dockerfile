FROM resin/rpi-raspbian:stretch
MAINTAINER docker@intrepid.de

RUN apt-get clean -y && \
apt-get -y update && \
apt-get -y upgrade && \
ln -s /usr/include/arm-linux-gnueabihf/curl /usr/local/include/curl && \
apt-get -y install -qq bash sed wget git build-essential re2c libc6-dev libxml2 libxml2-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libcurl4-openssl-dev pkg-config default-libmysqlclient-dev libmcrypt4 libmcrypt-dev && \
apt-get clean -y && \
cd /usr/src && \
wget -o php-7.1.8.tar.gz http://php.net/get/php-7.1.8.tar.gz/from/this/mirror && \
mv mirror php-7.1.8.tar.gz && \
tar xzvf php-7.1.8.tar.gz && \
cd php-7.1.8 && \
#./configure --prefix=/usr --sysconfdir=/etc --enable-ipv6 && \
./configure --prefix=/usr --sysconfdir=/etc --enable-ipv6 --enable-fpm --enable-bcmath --enable-exif --enable-calendar --enable-zip --enable-soap --enable-ftp --enable-pcntl --enable-mbstring --with-curl --with-pdo-mysql=mysqlnd --with-mcrypt --with-zlib --with-bz2 --with-config-file-path=/etc/php7/ --with-config-file-scan-dir=/etc/php7/modules/ --with-openssl -with-pdo-mysql --with-mysqli && \
make && \
make install && \
cp php.ini-production /etc/php.ini && \
cd / && \
rm -rf /usr/src/php-7.1.8 /usr/src/php-7.1.8.tar.gz && \
apt-get -y remove -qq -f wget git build-essential libc6-dev libxml2-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libcurl4-openssl-dev default-libmysqlclient-dev libmcrypt-dev && \
apt-get clean -y && \
sed -i -e "s/^upload_max_filesize\s*=\s*2M/upload_max_filesize = 64M/" /etc/php.ini && \
sed -i -e "s/^post_max_size\s*=\s*8M/post_max_size = 64M/" /etc/php.ini

#CMD /bin/bash
