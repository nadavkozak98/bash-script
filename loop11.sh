#!/bin/bash
#
#
#
###########
#nadav
#21.3.2023
##########
#
#
#
#
#clear the screen 
clear 


#comment: ask the user for ip and ping
echo "please provide me an ip address to ping:"
read ip

#takong the ip into the a variable 
a=`ping -c 1 "$ip" |egrep "0% packet loss" |tr "," " " |awk '{print $6,$7,$8}'`

b=`ping -c 1 localhost |egrep "0% packet loss" |tr "," " " |awk '{print $6,$7,$8}'`  


if [[ $a == $b ]]
then 
     echo "NETWORK IS GOOD"
else 
     echo "NETWORK IS BAD"
fi 
