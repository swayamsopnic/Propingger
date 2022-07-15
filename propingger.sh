#!/bin/bash
#  purpose: Tool To do hardwork for you
# Version:1.0
# Created Date :Friday 15 July 2022 10:23:47 PM IST
# Modified date :
# Author : KingMrAnubis
#START#
figlet ProPingger
echo
echo
echo
echo Developed By KingMrAnubis
echo Please Rate my product experince and tell me at telegram
echo contact me at https://t.me/KingMrAnubis
echo Enjoy
echo please read the Readme at github to use it efficiently
echo
echo
echo -e "Please specify The Location Of the host file(ex- /home/anubis/Desktop/file.txt): \c"
read -r hostname
for i in `cat $hostname`
do 
ping -c 1 $i >> output.txt
va=`echo $?`
if [ $va -gt 1 ];then
echo "$i Host is not Rechable"
else
echo "$i Host is Up"
fi
done
#END#
