FROM node:20-slim as node-builder

WORKDIR /app
COPY . .

RUN npm ci
RUN npm run build


FROM php:8.2-apache

RUN apt-get update && apt-get install -y \
  zip \
  unzip \
  git

RUN docker-php-ext-install -j "$(nproc)" opcache && docker-php-ext-enable opcache

RUN sed -i 's/80/8080/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf
RUN sed -i 's#/var/www/html#/var/www/html/public#g' /etc/apache2/sites-available/000-default.conf
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html
COPY . ./

# Composerのバージョンを更新
RUN composer self-update --2

# Composerパッケージの更新
RUN composer update --ignore-platform-reqs

# zip 拡張を有効化
RUN apt-get update && apt-get install -y libzip-dev \
    && docker-php-ext-install zip

COPY --from=node-builder /app/public ./public

# --ignore-platform-req=ext-zip オプションを追加
RUN composer install --ignore-platform-req=ext-zip

RUN php artisan migrate --force
RUN php artisan db:seed


RUN chown -Rf www-data:www-data ./