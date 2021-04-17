#--- Upgrading packages ---
echo "update and upgrade packages"
sudo apt update -y
sudo apt upgrade -y

#--- install/starting Apache2 server and mirroring website
echo "install apache2"
sudo apt install apache2 -y

echo "start apache2 service"
sudo service apache2 start

echo "mirroring a website"
# creating a folder for the website mirroring
mkdir web-mirror && cd web-mirror
# website mirrored
wget -rpknp https://en.wikipedia.org/wiki/Khabib_Nurmagomedov
# changing the index file in the default apache2 folder
cd /var/www/html/
sudo mv index.html index-old.html
# the en.wikipedia.org fodler was created by the wget command ran earlier
sudo cp -r ~/web-mirror/en.wikipedia.org/* .
# wiki is a folder in en.wikipedia.org; the file Khabib_Nurmagomedov is from the wget (also an html file)
sudo cp wiki/Khabib_Nurmagomedov .
# renaming Khabib_Nurmagomedov to index.html
sudo mv Khabib_Nurmagomedov index.html

echo "restarting apache2" 
sudo service apache2 restart

echo "mirror of the website should be available type in ip address in web browser"

#--- Installing/starting the mysql server and importing the database---
echo "install mysql"
sudo apt install mysql-server -y

echo "start msql service"
sudo service mysql start

echo "importing mysql database"
# the employees.sql is a premade script that creates the database and fills the info
# in import-db.sql I'm just pointing to the employees.sql script with mysql language
sudo mysql -u root < /home/ubuntu/import-db.sql

#--- Mounting the new drive---
echo "mount the 10gb drive"
sudo mount /dev/xvdf1/ /mnt/extra-d

echo"cat into file located in the mounted drive"
cat /mnt/extra-d/test.txt
