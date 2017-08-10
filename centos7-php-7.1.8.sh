#!/bin/sh

yum install bzip2 openssl-devel wget
wget http://php.net/distributions/php-7.1.8.tar.bz2
tar -xjvf php-7.1.8.tar.bz2
cd php-7.1.8
./configure --prefix=/usr/local/php-7.1.8 --enable-fpm --enable-zip --enable-openssl
make
make install
ln -s /usr/local/php-7.1.8 /usr/local/php
ln -s /usr/local/php/bin/php /usr/local/bin/

