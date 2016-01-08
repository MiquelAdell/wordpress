FROM wordpress
MAINTAINER Miquel Adell <miquel@miqueladell.com>

RUN sed '/WP_DEBUG/ r wp-config.custom.php' wp-config.php > tmp && mv tmp wp-config.php
