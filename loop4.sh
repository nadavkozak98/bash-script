#!/bin/bash
#
#
#
#
#
########
#creator - nadav
#date - 19.3.2023
#
#
#
#
ls -l |egrep ".big" |awk '{print $9}' > filebig.txt

mkdir folderbig
mkdir backupfolder


for a in `cat filebig.txt`
do 
   cp $a folderbig 
done 

tar -czvf folderbig.tar.gz folderbig
cp folderbig.tar.gz backupfolder








