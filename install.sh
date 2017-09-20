#!/bin/bash

#Merge the config with the code, output it to csel file
cat csel.cfg payload > /usr/local/bin/csel_SCORING_ENGINE_DO_NOT_TOUCH
sed -i "s/#KERNEL#/"`uname -r`"/g" /usr/local/bin/csel_SCORING_ENGINE_DO_NOT_TOUCH
chmod 777 /usr/local/bin/csel_SCORING_ENGINE_DO_NOT_TOUCH #Make it executable

#Check for crontab entry, add it if it doesn't exist
if [[ $(crontab -l -u root | grep csel) ]]
then
  :
else
  (crontab -l -u root ; echo "*/2 * * * * /usr/local/bin/csel_SCORING_ENGINE_DO_NOT_TOUCH")| crontab -
fi

#Check for CYBER folder, create if it doesn't exist
if [ ! -d "/home/CYBERPATRIOT_DO_NOT_REMOVE" ]
then
  mkdir /home/CYBERPATRIOT_DO_NOT_REMOVE
  cp logo.png /home/CYBERPATRIOT_DO_NOT_REMOVE/logo.png
  cp iguana.png /home/CYBERPATRIOT_DO_NOT_REMOVE/iguana.png
fi