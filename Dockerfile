# Use an official PHP image as a base
FROM php:7.4-apache

# Install mysqli extension
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

WORKDIR /
# Copy your PHP files into the container
COPY . /var/www/html/

EXPOSE 80