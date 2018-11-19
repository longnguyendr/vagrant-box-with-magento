#!/usr/bin/env bash
apt-get install -y python-software-properties
add-apt-repository -y ppa:ondrej/php

apt-get update -y
apt-get install -y apache2

apt-get install curl -y

apt-get install -y composer

#apt-get install -y php

apt install -y php7.0 libapache2-mod-php7.0 php7.0-common php7.0-gd php7.0-mysql php7.0-mcrypt php7.0-curl php7.0-intl php7.0-xsl php7.0-mbstring php7.0-zip php7.0-bcmath php7.0-iconv php7.0-soap

# cp /vagrant/.vagrant/apache2/sites-available/* /etc/apache2/sites-available

#switch to php7.0
update-alternatives --set php /usr/bin/php7.0

sed -i "s/Options Indexes FollowSymLinks/Options FollowSymLinks/" /etc/apache2/apache2.conf
systemctl stop apache2.service
systemctl start apache2.service
systemctl enable apache2.service
# or changing above 3 lines into
#service apache2 restart

# Install MariaDB
sudo apt-get install -y mariadb-server-10.1

#create database
#adding grant privileges to mysql root user from magento
MYSQL=`which mysql`
Q1="CREATE DATABASE magento;"
Q2="CREATE USER 'magento'@'localhost' IDENTIFIED BY 'magento';"
Q3="GRANT ALL ON magento.* TO 'magento'@'localhost' IDENTIFIED BY 'magento';"
Q4="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}${Q4}"

sudo $MYSQL -u root -e "$SQL"
echo 'created Magento database'

service mysql restart
		
#systemctl stop mariadb.service
#systemctl start mariadb.service
#systemctl enable mariadb.service
# or changing above 3 lines into
#service mariadb restart

#secure mysql
#mysql_secure_installation -root -n -y -y -y -y

systemctl restart mariadb.service

a2enmod rewrite
a2enmod ssl

#copy config file to box
sudo cp /vagrant/.vagrant/apache2/sites-available/* /etc/apache2/sites-available
a2ensite magento
a2dissite 000-default
service apache2 restart

sudo mkdir -p /var/www/magento2ce
chown -R www-data:www-data /var/www/magento2ce
chmod -R 755 /var/www/magento2ce
#unzip magento
sudo tar -zxvf /vagrant/Magento-CE*.tar.gz -C /var/www/magento2ce/
cd /var/www/magento2ce/
composer install

echo 'magento unzip done'

