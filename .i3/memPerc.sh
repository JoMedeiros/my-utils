#!/bin/bash

i3status | while :
do
    awk '/MemTotal/ {memtotal=$2}; /MemAvailable/ {memavail=$2}; END { printf("%.0f%%\n", (100- (memavail / memtotal * 100))) }' /proc/meminfo

done
