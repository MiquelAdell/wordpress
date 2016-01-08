FROM wordpress
MAINTAINER Miquel Adell <miquel@miqueladell.com>

COPY docker-wp-config.custom.php.sh /var/www/html/wp-config.custom.php
RUN sed '/WP_DEBUG/ r /var/www/html/wp-config.custom.php' /var/www/html/wp-config.php > /var/www/html/tmp && mv /var/www/html/tmp /var/www/html/wp-config.php
