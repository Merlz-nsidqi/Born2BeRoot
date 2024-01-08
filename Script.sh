#!/bin/bash

wall "	#Architecture: $(uname -a)
	#CPU physical : $(grep "physical id" /proc/cpuinfo | wc -l)
	#vCPU : $(nproc)
	#Memory Usage: $(free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)", $3, $2, $3*100/$2}')
	#Disk Usage: $(df -m --total | grep total | awk '{print $3"/"}')$(df -BG --total | grep total | awk '{print $2 "b"}')$(df --total | grep total | awk '{print "("$5")"}')
	#CPU load: $(mpstat | grep all | awk '{printf "%.2f%%", 100 - $13}')
	#Last boot: $(who -b | awk '{print $3, $4}')
	#LVM use: $(if [ "$(lsblk | grep "lvm" | wc -l)" -eq 0 ]; then echo "no"; else echo "yes"; fi)
	#Connections TCP : $(ss -t -a | grep 'ESTAB' | wc -l) ESTABLISHED
	#User log: $(who | wc -l)
	#Network: IP $(hostname -I | awk '{print $1}') ($(ip link show | grep "ether" | awk '{print $2}'))
	#Sudo : $(journalctl -q _COMM=sudo | grep COMMAND | wc -l) cmd"
