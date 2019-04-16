FROM php:7.3.4-cli-stretch

# Installing git
RUN apt-get update \
&& apt-get -y install git \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

# Installing PEAR
RUN curl -O https://pear.php.net/go-pear.phar \
&& php go-pear.phar 
RUN pear install HTTP_Request2

# Installing AzureDocumentDB-PHP
RUN cd /usr/local/lib/php \
&& git clone https://github.com/rioriost/AzureDocumentDB-PHP
#&& git clone https://github.com/cocteau666/AzureDocumentDB-PHP

ENTRYPOINT ["php -v"]
