#File created by Anselmo Pfeifer
# Reference www.anselmopfeifer.com

#!/bin/bash
apt-get install aptitude -y
aptitude -y install apache2
aptitude -y install php5
aptitude -y install git
aptitude -y install zip
aptitude -y install ldap-account-manager
aptitude -y install php5-ldap
aptitude -y install libapache2-mod-php5

/etc/init.d/apache2 start

/etc/init.d/apache2 stop
rm /etc/apache2/apache2.conf
rm -rf /etc/apache2/sites-available/*
rm -rf /etc/apache2/sites-enabled/*
rm -rf /var/www/*

cp -rf files/var/www/* /var/www/
cp files/etc/apache2/apache2.conf /etc/apache2/
cp files/etc/apache2/sites-available/default.conf /etc/apache2/sites-available/
cp files/usr/share/ldap-account-manager/config/lam.conf /usr/share/ldap-account-manager/config/


chown www-data:www-data -R /var/www/ && sudo chmod 755 -R  /var/www/

cd /etc/apache2/sites-available/ && a2ensite default.conf
cd /etc/apache2/mods-available/ && a2enmod ldap.load
cd /etc/apache2/mods-available/ && a2enmod rewrite

/etc/init.d/apache2 start
