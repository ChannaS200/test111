# Use the official PHP Apache image
FROM php:7.4-apache

# Install mysqli extension for MySQL connection
RUN docker-php-ext-install mysqli

# Copy source code into the container
COPY src/ /var/www/html/

# Set permissions for Apache
RUN chown -R www-data:www-data /var/www/html
