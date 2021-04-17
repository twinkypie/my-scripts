echo "update and upgrade packages"
sudo apt update -y
sudo apt upgrade -y
echo "install apache2"
sudo apt install apache2 -y
echo "start apache2 service"
sudo service apache2 start
echo "install mysql"
sudo apt install mysql-server -y
echo "start msql service"
sudo service mysql start


echo "mount the 10gb drive"
sudo mount /dev/xvdf1/ /mnt/extra-d

echo "cat into file located in the mounted drive"
cat /mnt/extra-d/test.txt
