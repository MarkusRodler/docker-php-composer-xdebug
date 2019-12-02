FROM mrodler/php-composer:7.4-fpm-alpine

LABEL maintainer="Markus Rodler"

RUN apk --update --no-cache add autoconf g++ make \
    && pecl install -f xdebug-2.8.1 \
    && docker-php-ext-enable xdebug \
    && apk del --purge autoconf g++ make

EXPOSE 9000