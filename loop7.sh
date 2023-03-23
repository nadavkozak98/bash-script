#!/bin/bash	
#
#
#
#######
#nadav	
#19.3.2023
######

#ask user for file extention then search for all the files, copy to other folder and rename to .old
rm -fr anotherfolder

#ask the user for a file extension
echo "Please enter a file extension:" 
read extention

if [[ "$extention" == "html" ]]
then
   echo "Sorry, we do not support HTML files."
exit
fi


#search for files with the given extension and display them to the user
echo "here are all the files with "$extention" extention"
ls -l |egrep $extention |awk '{print $9}'

mkdir anotherfolder

ls -l |egrep $extention |awk '{print $9}' > extfile.txt

for a in `cat extfile.txt`
do 
 b=`echo "$a" |awk -F"." '{print $1}'`
 mv $a anotherfolder/$b.old
  # cp $a anotherfolder
done 

  
ifconfig |egrep broad |awk '{print }'
