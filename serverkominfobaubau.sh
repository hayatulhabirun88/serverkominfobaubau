
#====================================
#======= INSTALL LAMP SERVER ========
#====================================
#UPDATE DEBIAN
apt-get update && apt-get upgrade

#INSTALL APACHE
apt-get install apache2

#MENGAKTIFKAN SERVICE APACHE
systemctl enable apache2

#INSTALL PHP 7.0
apt-get install php7.0 php-pear libapache2-mod-php7.0 php7.0-mysql php7.0-curl php7.0-json php7.0-cgi


#INSTALL MYSQL SERVER DAN MYSQL CLIENT
apt-get install mysql-server mysql-client

#MENGAKTIFKAN SERVICE MYSQL
mysql_secure_installation
systemctl enable mysql

#BUAT DIREKTORI PUBLIC HTML UNTUK HOSTING
mkdir -p /var/www/nama_domain.com/public_html

#KONFIGURASI VIRTUAL HOST
nano /etc/apache2/sites-enabled/nama_domain.conf

NameVirtualHost *:80
<VirtualHost *:80> 
     ServerAdmin webmaster@nama_domain.com
     ServerName nama_domain.com
     ServerAlias www.nama_domain.com
     DocumentRoot /var/www/nama_domain.com/public_html/
     ErrorLog /var/www/nama_domain.com/logs/error.log 
     CustomLog /var/www/nama_domain.com/logs/access.log combined
</VirtualHost>


#RESTART APACHE2
systemctl restart apache2

#====================================
#======= INSTAL SSH SERVER ==========
#====================================

#UPDATE
$ sudo apt-get update

#INSTALL OPEN SSH SERVER
sudo apt-get install openssh-server -y

#CEK STATUS SSH
sudo systemctl status ssh
