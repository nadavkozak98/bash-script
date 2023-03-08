#!/bin/bash

clear 

sleep 2 

echo "here is a list of all of the users who are logged in:"
echo " "

sleep 2 

last |egrep "still" |awk '{print $1}'

echo "---------------------------------------------------------------------------------------------"

sleep 2

echo "here is the computer IP adress:"
echo " "
sleep 2 

ifconfig |egrep "inet " |egrep -v 127 |awk '{print $2}'


echo "-------------------------------------------------------------------------------------------------"

sleep 2 

echo "here are all of the open ports in this computer:"
echo " " 

sleep 2 

nmap localhost |egrep "open" |tr "/" " " |awk '{print $1}'
echo "--------------------------------------------------------------------------------------------------"

sleep 2 

echo "here are all of the folders in this computer:"
echo " " 

sleep 2 

ls -l |egrep ^d |awk '{print $9}'


echo "--------------------------------------------------------------------------------------------------"


sleep 2 

echo "here is the time and date:"

sleep 2 
echo " " 

date 


sleep 2 



echo "--------------------------------------------------------------------------------------------------"

sleep 2 


echo "here are the number of running/sleeping tasks in this computer:"
sleep 2 
echo " " 

top |egrep -i "tasks"

echo "--------------------------------------------------------------------------------------------------------"

sleep 2


echo "here is a cow saying moooo"

sleep 2

echo " " 

cowsay "mooooo"


echo "--------------------------------------------------------------------------------------------------------"

sleep 2 

figlet "the end"
 
