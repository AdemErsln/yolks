FROM php:8.1-fpm-alpine

RUN apk --no-cache add curl ca-certificates nginx git

# Gerekli PHP eklentilerini yükleyin
RUN apk add --no-cache \
    php81-xml \
    php81-exif \
    php81-openssl \
    php81-pdo \
    php81-pdo_mysql \
    php81-pdo_sqlite \
    php81-mysqli \
    php81-bcmath \
    php81-bz2 \
    php81-ctype \
    php81-curl \
    php81-dom \
    php81-fileinfo \
    php81-fpm \
    php81-gd \
    php81-gettext \
    php81-gmp \
    php81-iconv \
    php81-json \
    php81-mbstring \
    php81-odbc \
    php81-pdo_dblib \
    php81-pdo_pgsql \
    php81-phar \
    php81-session \
    php81-simplexml \
    php81-soap \
    php81-sqlite3 \
    php81-tokenizer \
    php81-xmlreader \
    php81-zip

# Composer'ı yükleyin
COPY --from=composer:latest  /usr/bin/composer /usr/bin/composer

USER container
ENV USER container
ENV HOME /home/container

WORKDIR /home/container
COPY ../entrypoint.sh /entrypoint.sh


CMD ["/bin/ash", "/entrypoint.sh"]
