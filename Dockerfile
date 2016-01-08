FROM wordpress
LABEL version="0.1.1"
MAINTAINER Miquel Adell <miquel@miqueladell.com>

ONBUILD ADD docker-wp-config.custom.php /var/www/html/wp-config.custom.php

ONBUILD RUN sed '/WP_DEBUG/ r /var/www/html/wp-config.custom.php' /var/www/html/wp-config.php \
    > /var/www/html/tmp && \
    mv /var/www/html/tmp /var/www/html/wp-config.php


ONBUILD RUN rm /var/www/html/wp-config.custom.php
