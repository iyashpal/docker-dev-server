FROM php:8-fpm-alpine

ENV PHPGROUP=docker
ENV PHPUSER=docker


RUN adduser -g ${PHPGROUP} -s /bin/sh -D ${PHPUSER}

RUN sed -i "s/user = www-data/user = ${PHPUSER}/g" /usr/local/etc/php-fpm.d/www.conf
RUN sed -i "s/group = www-data/group = ${PHPGROUP}/g" /usr/local/etc/php-fpm.d/www.conf

RUN mkdir -p /var/www/html

RUN apk add --no-cache zip libzip-dev


RUN docker-php-ext-install mysqli pdo pdo_mysql zip

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

CMD ["php-fpm", "-y", "/usr/local/etc/php-fpm.conf", "-R"]
