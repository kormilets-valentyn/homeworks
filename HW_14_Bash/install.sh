#!/bin/bash
apt update
apt upgrade
while true; do
read -p "Скрипт установит кое-какой софт, продолжаем?[Y, n] " yn
case $yn in
[Yy]* ) apt install nginx git vim postgresql postgresql-contrib mysql-server mongodb php-fpm php-mysql -y;break;;
[Nn]* ) exit;;
* ) echo "Введите yes или no";;
esac
done
while true; do
read -p "Вроде установили, настройке php.ini и будем ставить laravel [Y, n] " yn
case $yn in
[Yy]* ) apt install composer php-mysql zip unzip php-zip php-mbstring php-tokenizer php-xml php-json php-common -y; break;;
[Nn]* ) exit;;
* ) echo "Введите yes или no";;
esac
done
cd /var/www/html/
composer create-project laravel/laravel MyProject
chown -R www-data:www-data /var/www/html/MyProject/
chmod -R 755 /var/www/html/MyProject/
cat > /etc/nginx/conf.d/example.conf <<EOF 
server {
    listen 80;
    listen [::]:80;
    root /var/www/html/MyProject;
    index  index.php index.html index.htm;
    server_name  example.com;
}
EOF

read -p "Введите домен " name
cat /etc/nginx/conf.d/example.conf | sed -e 's/example.com/'$name'/g' > /etc/nginx/conf.d/result.conf
rm /etc/nginx/conf.d/example.conf  

