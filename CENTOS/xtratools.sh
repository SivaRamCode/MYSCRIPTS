#!/bin/bash
# Created by https://github.com/SivaRamCode
# Modified by Jeeva

#Install Basic Monitoring Tools
yum -y install epel-release 
sleep 2
yum -y install nload nmon nethogs htop firewalld

sleep2
cd

#Requirement for curl
if [ ! -e /usr/bin/curl ]; then
   yum -y update && yum -y upgrade
   yum -y install curl 
   
fi
#Requirement for wget
if [ ! -e /usr/bin/wget ]; then
   yum -y install wget
fi

#clearing history
history -c

# info
clear
echo " "
echo "INSTALLATION COMPLETE!"
sleep 10

yum reboot
