https://www.digitalocean.com/community/tutorials/how-to-set-up-apache-virtual-hosts-on-ubuntu-14-04-lts

#configuration 
sudo apt-get update
sudo apt-get install apache2
sudo chown -R www-data:www-data /var/www/cdn
sudo chmod -R 755 /var/www




#Create the First Virtual Host File

sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/example.com.conf


<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /var/www/html
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>


#nginx config
sudo apt-get install nginx

/etc/nginx/conf.d
server {
    listen 80;
    server_name 164.138.19.140;
    # Tell Nginx and Passenger where your app's 'public' directory is
    root /var/www/cdn/;
}

sudo service nginx restart







#do this when host is cach
rm -r -f .ssh/known_hosts
#use for scp
scp /home/noolab/Documents/jscsspi/image.zip root@164.138.19.140:/var/www/cdn/  /home/noolab/Documents/configurServer


#yum update error

rm -f /var/run/yum.pid




cd /etc/httpd/conf/httpd.conf
change port 80 => 8080
service httpd restart
cd /etc/httpd/conf/extra/safir.conf
