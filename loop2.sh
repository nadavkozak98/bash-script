#!/bin/bash
#
#
##################
#creator : nadav
#date : 12.3.2023
#
#
##################








echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is hello 5 times"
echo " "
#comment: list hello 5 times 

sleep 1 

a=0
while [[ "$a" -lt 5 ]]
do
   echo "hello"
   a=$(( a + 1 ))
done

sleep 1 

echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is hello with numbers 5 times"
echo " "
#comment: list hello with numbers 5 times 

sleep 1 
a=1
while [[ "$a" -lt 5 ]] || [[ "$a" -eq 5 ]]
do 
      echo "hello $a"
      a=$(( a + 1 ))
done 

sleep 1 

echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is the username 5 times"
echo " "
#comment: show the username 5 times 

sleep 1 

a=0
while [[ "$a" -lt 5 ]]
do
   echo "$USER"
   a=$(( a + 1 ))
done

sleep 1 


echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here s the time in seconds 5 times "
echo " "
#comment: show the time in seconds 5 times 

sleep 1 
a=0

while [[ "$a" -lt 5 ]]
do
   clock |tr ":" " " |awk '{print $7}'
   a=$(( a + 1 ))
done

sleep 1 


echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is the computer memory 5 times"
echo " "
#comment: show the computer memory 5 times 
sleep 1 

a=0

while [[ "$a" -lt 5 ]]
do
   free -k |egrep -i mem |awk '{print $2}'
   a=$(( a + 1 ))
done 

sleep 1 


echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is the memory usage for the last 5 min 20 times"
echo " "
#comment: show the memory for the lsat 5 min 20 times  

sleep 1 

a=0

while [[ "$a" -lt 20 ]]
do
   w |egrep load |awk '{print $9}' |tr "," " "  
   a=$(( a + 1 ))
done 

sleep 1


echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is the users in this computer"
echo " "
#comment: show me the users in the compurer
sleep 1 

a=0
totalnumber=`cat /etc/passwd |cat -n |tr -d " " |wc -l`

while [[ "$a" -lt "$totalnumber" ]]
do 
  koko=`cat /etc/passwd |cat -n |awk '{print $1,$2}' |egrep ^"$a " |tr ":" " " |awk '{print $2}'`
   echo "user $koko"
   a=$(( a + 1 ))
done

sleep 1 


echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is how many NIC you have in this computer"
echo " "
echo "exersice number 1"
#comment: show how many NIC you have in your system = number 1 
sleep 1 

totalnic=`lspci |wc -l`
a=$(( totalnic +10 ))


while [[ "$totalnic" -lt "$a" ]]
do 
   echo -e "\033[31m"
   echo "you have more than ONE network card in the system"
   a=$(( a - 1 ))
   sleep 1 
done 

echo -e "\033[0m]"

sleep 1 


echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is hello the same number as the last octet in the IP Adress"
echo "exersice number 5"
echo " "
#Create a script that takes the last octet and run HELLO the same number of times = number 5 
sleep 1 

a=0
lastoctet=`ifconfig |egrep broad |tr "." " " |awk '{print $5}'`

while [[ "$a" -lt "$lastoctet" ]]
do 
      echo "HELLO $a"
      a=$(( a + 1 ))
done 

sleep 1 

#Create a script that count the number of errors messages in the  /var/log/messages = number 6 

echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is hello the same times as error messages"
echo "exersice number 6"
echo " "
sleep 1 

a=0
errors=`cat -n var/log/messages |egrep system |wc -l`

while [[ "$a" -lt "$errors" ]]
do 
   echo "hello $a "
   a=$(( a + 1 ))
done 

sleep 1 


#Create a script that will run a MESSAGE the number of times as the FREE RAM memory number you have , then run another loop the number of times as the number of cores you have = exersice 4

echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is a message the number of free RAM and then number of cores"
echo "exersice number 4"
echo " "
sleep 1 

a=0
freeram=`free -g |egrep -i mem |awk '{print $2}'`
numcore=`nproc`

while [[ "$a" -lt "$freeram" ]]
do 
      echo "you have $freeram GB memory left"
      a=$(( a + 1 ))
done 

echo " "
sleep 1 

a=0
while [[ "$a" -lt "$numcore" ]]
do 
      echo "you have $numcore cores"
      a=$(( a + 1 ))
done 


echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "script that create a user as long as it under or equal to 20"
echo "exersice number 3"
echo " "
sleep 1 

createuser=`useradd`


echo "Enter the number of users to create:"
read num_users

if [[ $num_users -gt 20 ]]
then
    echo "Error: You cannot create more than 20 users"
else 
     echo "$createuser"
fi



echo "------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 
echo "here is a cow say the ip 5 times"
echo " "
sleep 1 

a=0

while [[ "$a" -lt 5 ]]
do 
      ifconfig |egrep broad |awk '{print $2}' | cowsay
      sleep 1 
      a=$(( a + 1 ))
done 



echo "---------------------------------------------------------------------------------------------------------------------------------------------------------"
echo " " 


for a in `file.txt`
do
    echo "$a"
done  












