
#!/bin/bash
sudo su
yum update -y
yum install -y httpd
mkdir store-dir
cd store-dir
wget https://www.free-css.com/assets/files/free-css-templates/download/page260/e-store.zip
unzip e-store.zip
cd ecommerce-html-template
mv * /var/www/html/
cd /var/www/html/
systemctl enable httpd
systemctl start httpd