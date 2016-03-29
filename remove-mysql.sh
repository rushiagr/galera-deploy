sudo service mysql stop  #or mysqld
sudo killall -9 mysql
sudo killall -9 mysqld
sudo apt-get remove -y --purge mysql-server mysql-client mysql-common
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo delgroup mysql
sudo deluser mysql
sudo rm -rf /var/lib/mysql
sudo apt-get purge -y mysql-server-core-5.5
sudo apt-get purge -y mysql-client-core-5.5
sudo rm -rf /var/log/mysql
sudo rm -rf /etc/mysql
