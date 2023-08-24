#!/bin/bash

#bluetoothctl is a better than hcitool lescan because it shows more info about beacons it sees

LOGPATH="/home/pi/Scripts/logs/bluetoothctl"
DATE=$(/bin/date +%F-%H-%M-%S)
HN=$(hostname)
echo "Logging to ${LOGPATH}/${DATE}_${HN}.txt"

#So this will come up last, so that we guarantee the logging is up first
sleep 40

#Do the actual scanning, so hcidump and btmon can see traffic
#/usr/bin/bluetoothctl scan on > $LOGPATH/$DATE.txt
RESULT=$(nohup /usr/bin/bluetoothctl scan on > ${LOGPATH}/${DATE}_${HN}.txt &)
