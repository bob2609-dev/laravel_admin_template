# Set master image
FROM php:8.1.16-fpm-alpine3.16

# ARGUMENTS

ARG user=bob2609
ARG uid=1001

# USER root

# Copy composer.lock and composer.json
COPY composer.lock composer.json /var/www/html/relocationApp/

COPY . /var/www/html/relocationApp



WORKDIR /var/www/html/relocationApp


RUN rm -rf /var/cache/apk/*


# RUN apk update && \
#     apk add --no-cache php-pear && \
#     apk add --no-cache openldap-dev libldap && \
#     apk add --no-cache --virtual .build-deps $PHPIZE_DEPS && \
#     apk add --no-cache --virtual .ldap-build-deps openldap-dev

# RUN apk add --no-cache openldap-dev libldap

# # Enable the OpenLDAP extension
# RUN docker-php-ext-configure ldap --with-libdir=lib/ && \
#     docker-php-ext-install ldap


# # Add and Enable PHP-PDO Extenstions
# RUN docker-php-ext-install pdo pdo_mysql
# RUN docker-php-ext-enable pdo_mysql

# install ping
RUN \
    apk update && \
    apk add --no-cache busybox-extras && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install bcmath

# clear run cache
RUN apk del .build-deps && \
    rm -rf /var/cache/apk/* && \
    rm -rf /var/lib/apt/lists/*

# Install PHP Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# RUN useradd -G www-data,root -u $uid -d /home/$user $user
# RUN mkdir -p /home/$user/.composer && \
# chown -R $user:$user /home/$user

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories



RUN apk update && apk add busybox-extras
RUN apk add libxml2-dev


RUN apk update && apk add git




# Remove Cache
RUN rm -rf /var/cache/apk/*

# Add UID '1000' to www-data
# RUN usermod -u 1000 www-data

# Copy existing application directory permissions
COPY --chown=www-data:www-data . /var/www/html/relocationApp/

RUN chown -R www-data:www-data \
    /var/www/html/ca_portal/storage \
    /var/www/html/ca_portal/bootstrap/cache

# Change current user to www
# USER www-data

RUN chmod -R 777 storage bootstrap/cache
RUN chown -R $USER:www-data storage
RUN chown -R $USER:www-data bootstrap/cache

RUN chmod -R 777 /var/www/html/relocationApp/storage/*
#RUN chmod -R 777 /var/www/html/bootstrap/cache/*


# Expose port 9000 and start php-fpm server
EXPOSE 9000
EXPOSE 7000



RUN curl -sSLf \
    -o /usr/local/bin/install-php-extensions \
    https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions && \
    chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions xml



RUN install-php-extensions soap



# ******************************************************
WORKDIR /var/www/html/relocationApp/


RUN  cd /var/www/html/relocationApp/

RUN apk update && apk add nodejs npm
# RUN npm install && npm update
# ******************************************************
# RUN  npm run prod
# ******************************************************


# Clear cache to reduce image size
RUN rm -rf /var/cache/apk/*





# USER $user
WORKDIR /var/www/html/relocationApp/


RUN  cd /var/www/html/relocationApp/

RUN rm -f /var/www/html/relocationApp/public/storage

RUN ln -s /var/www/html/relocationApp/storage/app/public /var/www/html/relocationApp/public/storage


CMD ["php-fpm"]
