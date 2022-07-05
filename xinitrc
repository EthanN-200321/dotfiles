#          _       _    _            
#     __  <_>._ _ <_> _| |_ _ _  ___ 
#   _ \ \/| || ' || |  | | | '_>/ | '
#  <_>/\_\|_||_|_||_|  |_| |_|  \_|_.
#                                    

picom -b &
slstatus &
~/.fehbg &
sxhkd &

brightnessctl set 100%
exec dwm

