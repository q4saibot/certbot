FROM php:apache

RUN a2enmod ssl
RUN a2enmod rewrite

VOLUME [ "/etc/apache2" ]

VOLUME [ "/etc/letsencrypt" ]
VOLUME [ "/var/lib/letsencrypt" ]

VOLUME [ "/usr/local/etc/php" ]

VOLUME [ "/var/www/html" ]

WORKDIR /var/www/html

EXPOSE 443
EXPOSE 80
