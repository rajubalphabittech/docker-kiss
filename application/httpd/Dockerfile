FROM httpd:2.4

# Httpd configuration files
COPY configs/myhttpd.conf /usr/local/apache2/conf/httpd.conf
COPY configs/myvh.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf

# Httpd star script (see httpd:2.4 Dockerfile)
# Custom config in here
COPY httpd-foreground /usr/local/bin/

RUN chmod +x /usr/local/bin/httpd-foreground
RUN chown -R root:www-data /usr/local/apache2/
