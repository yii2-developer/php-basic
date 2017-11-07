FROM nsign/php-docker:7.1-fpm

RUN \
    docker-php-ext-install pdo_mysql \
    && docker-php-ext-enable pdo_mysql \

    && pecl install https://xdebug.org/files/xdebug-2.5.5.tgz \
    && docker-php-ext-enable xdebug
