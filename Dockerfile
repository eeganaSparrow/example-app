FROM node:20-slim as node-builder

COPY . .
RUN npm ci
RUN npm run build

# richarvey/nginx-php-fpmをベースとする
FROM richarvey/nginx-php-fpm:2.1.2

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Laravel config
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

WORKDIR /var/www/html
COPY . ./

# Composerのバージョンを更新
RUN composer self-update --2

# Composerパッケージの更新
RUN composer update --ignore-platform-reqs

CMD ["/start.sh"]