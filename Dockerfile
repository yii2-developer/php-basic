FROM nsign/php-docker:7.1-fpm

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-enable pdo_mysql

RUN apt-get autoremove -y && apt-get clean all
