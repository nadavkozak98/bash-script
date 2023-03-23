#!/bin/bash
#
#
#
#
###########
#nadav 
#19.3.2023
##########
rm -fr users_file
mkdir users_file


cat /etc/passwd |tr ":" " " |awk '{print $1}' > usersfile.txt

for a in `cat usersfile.txt`
do 
   touch users_file/$a.txt
done 
