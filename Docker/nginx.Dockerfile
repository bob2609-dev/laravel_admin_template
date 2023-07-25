FROM nginx:latest
COPY ./nginx.conf /etc/nginx/nginx.conf

RUN apt-get update && apt-get install -y \
    libssl-dev \
    && pecl install mongodb \
    && docker-php-ext-enable mongodb \
    && apt-get install iputil-ping \
    && apt-get install telnet