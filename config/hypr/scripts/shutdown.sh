#!/bin/zsh
stop=$(pidof sddm)
echo $stop
sudo /bin/kill -9 $stop
shutdown now

