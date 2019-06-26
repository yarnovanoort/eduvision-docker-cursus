#voeg een from toe php 7.0 nginx
FROM php:7.2-apache

#run commando's apt-get update, apt-get install voor -y php5-mysql en een apt-get clean
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libldap2-dev \
        git \
        unzip \
    apt-get clean

# RUN apt-get update
# RUN apt-get install -y php5-mysql
# RUN apt-get clean

#copy alles van de myapp folder in de html root
COPY myapp /var/www/html/

