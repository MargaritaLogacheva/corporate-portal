FROM php:8.3-apache

# Установим необходимые расширения PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Копируем содержимое папки проекта внутрь контейнера
COPY . /var/www/html/

# Открываем порт 80
EXPOSE 80
