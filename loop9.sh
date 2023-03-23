#!/bin/bash
#
#
##########
#nadav
#20.3.2023
##########
#practice on if:
echo "if loop for example"
echo "---------------------------------------------------------------------------------------------"
echo " "

echo "please provide a number between 1-10"
read number 


if   [[ number -lt 5 ]]
then 
      echo "the number is between 1-5!"
else 
      echo "the number is between 5-10!"
fi     



echo "-------------------------------------------------------------------------------------------------"
echo "while loop for example"
echo " "

a=0

while [[ "$a" -lt 5 ]]
do 
   echo "kookoo!"
   sleep 1 
   a=$(( a + 1 ))
done 


echo "-------------------------------------------------------------------------------------------------"
echo "for loop for example"
echo " "
echo "show all file with .big extention"
echo " "


ls -l |egrep .big |awk '{print $9}' > big.txt


for a in `cat big.txt`
do 
   echo "$a"
done 




 















