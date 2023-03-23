#!/bin/bash
#
#
##########
#nadav 
#22.3.2023
##########
#variables:
#fileextention: the extention that has been provided by the user
#checkperm: show each file permission in the 'others' group for execute permission
#filename: show each file's name in the extention that has been provided earlier
#w: number of files that do not have an execute command in the others group, and are copied to 'anotherfolder'
#copiedfiles: number of files that do not have an execute command in the others group, and are copied to 'anotherfolder'

#comment: remove the folder each time you start the script:
rm -fr anotherfolder

#comment: script that asks user for a file extention, and check the permission of that extention:

#clear the screen:
clear 

#comment:ask the user for a file extention:
echo "please provide a file extention:"
read fileextention

#insert the command that search for the files with the provided extention into a file:
ls -l *"$fileextention" |tr " " "_" > files.temp


#sleep for 1 second 
sleep 1

echo " "
echo "here are all the files with .$fileextention extention:"
echo " "
cat files.temp

#sleep for 1 second 
sleep 1 

echo "----------------------------------------------------------------------------------------------------------------------------------------------------"

#create a folder
mkdir anotherfolder

#make a vaiable than number all of the files that are copied to 'anotherfolder'
w=0

#check the others group for execute permission, if they have say that they have, if not copy to 'anotherfolder':
for a in `cat files.temp`
do 
  checkperm=`echo "$a" |awk '{print $1}' |tr "." " " |cut -c 10` 
  filename=`echo "$a" |tr "_" " " |awk '{print $9}'`
  if [[ $checkperm == x ]]
  then 
       echo "the file has an execute permission for the 'others' group"
  else 
       cp "$filename" anotherfolder/
       w=$(( w + 1 ))
       echo "the file has been copied to anotherfolder"
  fi
done   

#sleep for 1 second
sleep 1

echo " "

#say how many files have been copied to 'anotherfolder':
echo "$w files have been copied to 'anotherfolder'"


#sleep for 1 second
sleep 1 

echo " "

#comment: say how many files have been copied to 'anotherfolder':
copiedfiles=`ls -l anotherfolder |egrep -v total |wc -l`
echo " "
echo "$copiedfiles files have been copied to 'anotherfolder'"










