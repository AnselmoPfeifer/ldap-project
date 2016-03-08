#File created by Anselmo Pfeifer
# Reference www.anselmopfeifer.com

#!/bin/bash
rm -rf /etc/hostname
cp files/etc/hostname /etc/
rm -rf /tec/hosts
cp files/etc/hosts /etc/
sleep 5 
init 6