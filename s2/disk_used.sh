#!/usr/bin/bash
disk_used=`df -Th | grep '/$' | awk '{print $(NF-1)}' | awk -F"%" '{print $1}'`
mail_user=zqh
if [ $disk_used -ge 20 ]; then
	  echo "`date '+%F +T'` disk: ${disk_used}%" | mail -s "disk war!" $mail_user
fi
