#--- Upgrading packages ---
echo "update and upgrade packages"
sudo apt update -y
sudo apt upgrade -y

#--- install/starting Apache2 server and mirroring website
echo "install apache2"
sudo apt install apache2 -y
echo "start apache2 service"
sudo service apache2 start
#to-do: still need to mirror website

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

