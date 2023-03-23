#!/bin/bash
#
#
#
#
###########
#nadav 
#22.3.2023
###########
#
#
#
#
#comment: Check permission of files with a specific  extension that user provide if the “other” permission do not have execute , copy that file to another folder 
#
clear 

rm -fr backupfolder

echo "please provide a file extention in order to check permission:"
read extention

mkdir backupfolder

a=`ls -l /"$extention" |awk '{print $3,$4}'`

if [[ "$a" == `cat pext.txt` ]]
then 
     ls -l /"$extention"
else 
     touch "$extention"
     cp "$extention" backupfodlder
fi


 
