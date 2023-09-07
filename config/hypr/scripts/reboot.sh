#!/bin/zsh
stop=$(pidof sddm)
echo $stop
/bin/kill -9 $stop >> /dev/null
echo "Done" 
reboot

