FROM  php:8.2-fpm



# RUN apk update && apk add busybox-extras
# RUN apk add libxml2-dev


# Copy application files to the container
COPY . /var/www/html/relocationApp

# Set working directory
RUN cd /var/www/html/relocationApp
WORKDIR /var/www/html/relocationApp

RUN docker-php-ext-install mysqli pdo_mysql

# RUN apt-get update && \
#     apt-get install -y \
#         curl \
#         gnupg \
#     && curl -sL https://deb.nodesource.com/setup_14.x | bash -

# RUN apt-get update && \
#     apt-get install -y \
#         nodejs
RUN apt-get update && apt-get install -y \
    libssl-dev \
    && pecl install mongodb \
    && docker-php-ext-enable mongodb 
    # && apt-get install iputil-ping \
    # && apt-get install telnet

# Expose port
EXPOSE 9002

EXPOSE 9000

# Start PHP-FPM
CMD ["php-fpm"]
