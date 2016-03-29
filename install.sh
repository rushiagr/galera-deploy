#TODO: automatic mysql root password setting, and not via a gui-like interface
#TODO: instead of removing mysql*, add specific packages
#TODO: add -y to all apt-get install

# export http_proxy=http://10.140.218.59:3128
# export https_proxy=http://10.140.218.59:3128

sudo apt-get remove -y --purge mysql*
sudo mv /var/lib/{mysql,mysqlbkp}
sudo ln -s {/etc/apparmor.d,/etc/apparmor.d/disable}/usr.sbin.mysqld
sudo apt-get install -y software-properties-common
sudo -E apt-key adv --keyserver keyserver.ubuntu.com --recv BC19DDBA
echo "deb http://releases.galeracluster.com/ubuntu trusty main" | sudo tee -a /etc/apt/sources.list.d/galera.list
sudo apt-get update
sudo apt-get install -y galera-3 galera-arbitrator-3 mysql-wsrep-5.6
