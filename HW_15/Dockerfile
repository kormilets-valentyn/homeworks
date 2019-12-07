FROM alpine
RUN apk update && apk add vim && apk add apache2 && apk add php7 && apk add php7-apache2
RUN sed -i 's/#ServerName www.example.com:80/ServerName localhost/' /etc/apache2/httpd.conf
COPY index.php /var/www/localhost/htdocs
EXPOSE 80
CMD httpd -D FOREGROUND 
