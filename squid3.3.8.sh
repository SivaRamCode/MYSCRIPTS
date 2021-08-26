#!/bin/bash

#Ask for password if necessary
sudo echo

#Add Trusty Sources
sudo touch /etc/apt/sources.list.d/trusty_sources.list
echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty main universe" | sudo tee --append /etc/apt/sources.list.d/trusty_sources.list > /dev/null

#Update
sudo apt update

#Install Squid
sudo apt install -y squid3=3.3.8-1ubuntu6 squid=3.3.8-1ubuntu6 squid3-common=3.3.8-1ubuntu6

#Install missing init.d script
wget https://gist.githubusercontent.com/1nikolas/1cd2aa0839a917b7306bafa7559d266c/raw/21f78cba2e1486aa84b9bfefc220857189b19a6a/squid3
sudo cp squid3 /etc/init.d/
sudo chmod +x /etc/init.d/squid3
sudo update-rc.d squid3 defaults

#Start squid
sudo service squid3 start

#Cleanup
rm squid3

#Print info
clear
echo "====================================="
echo "Squid 3.3.8 is successfully installed!"
echo "Squid's config is located at '/etc/squid3/squid.conf'"
echo "You can start/stop/restart squid by using 'sudo service squid3 start/stop/restart'"
echo "====================================="
