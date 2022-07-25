#          _       _    _            
#     __  <_>._ _ <_> _| |_ _ _  ___ 
#   _ \ \/| || ' || |  | | | '_>/ | '
#  <_>/\_\|_||_|_||_|  |_| |_|  \_|_.
#                                    
systemctl --user import-environment DISPLAY

picom -b &
slstatus &
~/.fehbg &
sxhkd &

brightnessctl set 100%
exec dwm

