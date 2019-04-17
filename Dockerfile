FROM rioriost/php-composer

# Installing jupitern/cosmosdb
RUN cd /usr/local/lib/php \
&& git clone https://github.com/jupitern/cosmosdb \
&& cd cosmosdb \
&& composer install --no-plugins --no-scripts

ENTRYPOINT ["php","/usr/local/lib/php/cosmosdb/examples/example1.php"]
