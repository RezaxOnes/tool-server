#!/bin/bash
LOGFILE="/var/log/time-command.log"
presentTime=$(date +"%H%M")

# Edit this target time! Format=0900=09:00(24h)
target_time_shutdown="0900"

if [ "$presentTime" = "$target_time_shutdown" ]; then
echo "May Se Tat Nguon Trong 3s do <=$target_time_shutdown" >> "$LOGFILE"
sleep 3
    sync
    /usr/bin/systemctl poweroff -i  
else  
echo "Chua toi thoi gian chi dinh! - $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOGFILE" 
fi
