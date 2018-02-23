#!/bin/bash

`crontab -l > crt`
if [ -e md5sum_crontab ]
then
	if [ "`md5sum crt`" != "`cat md5sum_crontab`" ]
	then
		echo "Le crontab a ete modifie" | mail -s "Alerte crontab" root
	fi
else
	`md5sum crt > md5sum_crontab`
fi
