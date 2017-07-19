FROM php:7.1-apache
RUN apt-get update && apt-get install libssl-dev curl git zlib1g-dev unzip libpng12-dev libjpeg-dev libpq-dev libicu-dev -y
RUN pecl install mongodb \
    && pecl install redis \
    && pecl install apcu \
    && docker-php-ext-enable mongodb redis apcu

RUN docker-php-ext-install gd mbstring opcache pdo pdo_mysql zip bcmath intl

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer