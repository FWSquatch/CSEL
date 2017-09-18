#!/bin/bash
checkHosts=(google.com)

if [ "$checkHosts" == "" ]; then :; else
if [[ $(cat /etc/hosts | grep ${checkHosts}) ]]
	then
		echo found		
		#if [ "$silentMiss" == "y" ]; then :; else echo '<p style="color:red">MISS hosts file issue</p>' >> $index;fi
	else
		echo nope
		#echo '<p style="color:green">Hosts file corrected (7 points)</p>' >> $index
		#imageScore=$[$imageScore+7]
fi
fi
