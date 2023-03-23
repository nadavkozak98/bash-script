#!/bin/bash
#
#
##########
#nadav
#19.3.2023
##########


ip=`ifconfig |egrep broad |awk '{print $2}'` 

a=`echo "$ip" |awk -F"." '{print $1,$2,$3}' |tr " " "."`


b=1


echo "$a.$b"
