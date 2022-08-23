#!/bin/sh
killall polybar
polybar -c .config/polybar/config.ini main 2>&1 | tee -a /tmp/pb.log & disown
echo "Polybar launched..."

