#!/bin/bash	
#
#
#
#
#
#
######################
#creator :nadav
#date :12.3.2023
#
######################

clear 

a=1

while [[ "$a" -lt 6 ]]
do 
    echo "hello $a"
    a=$(( a + 1))
done


b=100

while [[ "b" -gt 50 ]]
do 
   echo "hello $b"
   b=$(( b - 15))
done


d=`echo -n "$USER" |wc -m` 

echo "your username has "$d" letters"

`
