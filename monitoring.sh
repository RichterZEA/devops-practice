#!/bin/bash
set -e

disk_u=$(df -h | grep /dev/sda | awk '{print $5}' | tr -d '%')

if [ $disk_u -ge 90  ]; then
	echo "Жопа!! Диск забитий!!!1!"
elif [ $disk_u -ge 75  ]; then
	echo "Диск заповнений на $disk_u%"
else
	echo "Жити можна, диск заповнений на $disk_u%"
fi
