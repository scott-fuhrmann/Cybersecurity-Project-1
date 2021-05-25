#!/bin/bash
pathname="$HOME/research"
files=('/etc/shadow' '/etc/passwd')

if [ ! -d $pathname ]
then
  mkdir ~/research 2> /dev/null
fi

if [ -f $pathname/sys_info.txt ]
then
  rm -f $pathname/sys_info.txt
fi

echo "A Quick System Audit Script" > $pathname/sys_info.txt
date >> $pathname/sys_info.txt
echo "" >> $pathname/sys_info.txt
echo "Machine Type Info:" >> $pathname/sys_info.txt
echo $MACHTYPE >> $pathname/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> $pathname/sys_info.txt
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n" >> $pathname/sys_info.txt
echo "Hostname: $(hostname -s) " >> $pathname/sys_info.txt
echo -e "\n777 Files:" >>  $pathname/sys_info.txt
find / -type f -perm 777 2> /dev/null 1>> $pathname/sys_info.txt
echo -e "\nTop 10 Processes" >> $pathname/sys_info.txt
ps aux -m | awk {'print $1, $2, $3, $4, $11'} | head >> $pathname/sys_info.txt

for file in ${files[@]}
do 
  ls -laF $file
done
