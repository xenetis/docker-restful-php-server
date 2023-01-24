FROM php:7.4-fpm

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

# Use the default production configuration
# RUN cp "/usr/local/etc/php/php.ini-production" "/usr/local/etc/php/php.ini"

# Use the development configuration
RUN cp "/usr/local/etc/php/php.ini-development" "/usr/local/etc/php/php.ini"

# Hide php version
RUN sed -i "s/expose_php = .*/expose_php = Off/" /usr/local/etc/php/php.ini