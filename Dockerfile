FROM php:7.3-apache-buster

# Install system packages for PHP extensions for Codeigniter Framework
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y unzip libzip4 libjpeg62-turbo libmcrypt4 libpng16-16 libpq5 \
  libzip-dev libjpeg-dev libmcrypt-dev libpng-dev libpq-dev \
  && docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
  && docker-php-ext-install gd mysqli opcache pdo pdo_mysql zip \
  && apt-get -y remove libzip-dev libjpeg-dev libmcrypt-dev libpng-dev libpq-dev \
  && apt-get -y autoremove \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
  && if command -v a2enmod >/dev/null 2>&1; then \
        a2enmod rewrite headers \
    ;fi \
  && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
