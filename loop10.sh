#!/bin/bash
#
#
##########
#nadav
#21.3.2023
##########
#
#
#comment : ask user for ip address
#
#
echo "please provide me an IP address to ping"
read ip

echo " " 

a=`ifconfig |egrep broad |awk '{print $2}'`

if [[ $ip == $a ]]
then 
    echo "NETWORK IS GOOD"
else 
     echo "NETWORK IS BAD"
fi


