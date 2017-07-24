# README #

FROM php:7.1-apache

### Enabled extensions ###

gd 
mbstring 
opcache 
pdo 
pdo_mysql 
zip
bcmath 
intl
mongodb 
redis 
apcu 
memcached

### tools ###

composer (installed at /usr/local/bin)

### php.ini custom ###

memory_limit = 512M
upload_max_filesize = 64M
post_max_size = 64M
max_execution_time = 600


