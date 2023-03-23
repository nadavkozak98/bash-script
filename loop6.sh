#!/bin/bash
#
##########
#nadav 
#19.3.2023
##########

rm -fr backuphome

mkdir backuphome
ls -l /home |awk '{print $9}' > home.txt

for a in `cat home.txt`
do 
   cp $a backuphome
done   


tar -czvf home.tar.gz backuphome

