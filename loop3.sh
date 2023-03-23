#!/bin/bash
#
#
#
#######
#
#creator - nadav
#date - 19.3.2023
#
######


clear 

for a in `cat file1.txt`
do 
   echo $a 
done 




echo " " 
echo "--------------------------------------------------------------------"

a=0
users=`cat file1.txt |cat -n |tr -d " " |awk '{print $1,$2}' |egrep ^"$a "`
numusers=`cat file1.txt |wc -l`


 
while [[ "$a" -lt "$numusers" ]]
do  
   cat file1.txt |cat -n |tr -d " " |awk '{print $1,$2}' |egrep ^"$a " |awk '{print $2}'
   a=$(( a + 1 ))
done 
