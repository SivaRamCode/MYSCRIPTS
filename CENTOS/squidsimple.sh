#!/bin/bash
# Created by https://github.com/SivaRamCode
# Modified by Jeeav

#Requirement
if [ ! -e /etc/squid ]; then
   yum -y update && yum -y upgrade
   yum -y install squid
fi

# initializing var
OS=`uname -m`;
MYIP=$(curl -4 icanhazip.com)
if [ $MYIP = "" ]; then
   MYIP=`ifconfig | grep 'inet addr:' | grep -v inet6 | grep -vE '127\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | cut -d: -f2 | awk '{ print $1}' | head -1`;
fi
MYIP2="s/xxxxxxxxx/$MYIP/g";

# go to root
cd

# install squid
#yum -y install squid
cat > /etc/squid/squid.conf <<-END
acl VPN dst xxxxxxxxx-xxxxxxxxx/32
http_access allow VPN
http_access deny all
http_port 0.0.0.0:8000
http_port 0.0.0.0:8080
acl bonv src 0.0.0.0/0.0.0.0
no_cache deny jeeva
dns_nameservers 1.1.1.1 1.0.0.1
visible_hostname jeeva
END
sed -i $MYIP2 /etc/squid/squid.conf;
service squid restart
chkconfig squid on

sleep 2
cd

ln -fs /usr/share/zoneinfo/Asia/Kuala_Lumpur /etc/localtime

#clearing history
history -c

# info
clear
echo " "
echo "INSTALLATION COMPLETE!"
echo " "
