# ベースイメージを指定
FROM php:8.2-fpm

# 作業ディレクトリを設定
WORKDIR /var/www/html

# Composerをインストール
RUN apt-get update && apt-get install -y \
    curl \
    unzip

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Composerの依存関係を最初にインストール
COPY composer.json composer.json
COPY composer.lock composer.lock
RUN composer install --no-interaction --optimize-autoloader

# アプリケーションのコードをコピー
COPY . .

# アプリケーションの設定
RUN php artisan config:cache
RUN php artisan route:cache
RUN php artisan view:cache

# PHP-FPMを起動
CMD ["php-fpm"]
