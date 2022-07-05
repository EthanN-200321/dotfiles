#!/bin/sh
killall polybar
polybar -c $HOME/.dots/polybar/config.ini main 2>&1 | tee -a /tmp/polybar.log & disown
echo "Polybar launched..."

