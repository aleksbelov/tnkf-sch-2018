#!/bin/bash
logpath=/root/httpd_start.log
dt=`date`
infostr="$dt httpd was not running, starting..."
httpdpath=/home/user22/homework/materials/class03/src/tinyhttpd/tinyhttpd/httpd
grepout=`ps -a -u root | grep httpd`
if ! [[ $grepout = *"httpd"* ]]; then
	echo $infostr
	echo $infostr >> $logpath
	sudo $httpdpath &
	sleep .05
	exit 1
fi

echo "httpd has already been started"
