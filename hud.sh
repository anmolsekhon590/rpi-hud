#!/bin/bash

temp=$(sudo cat /sys/class/thermal/thermal_zone0/temp)
corecount=$(grep -c ^processor /proc/cpuinfo)

printf "core count: %d\n" ${corecount}
printf "temp: %d.%d°C\n" ${temp:0:2} ${temp:2}