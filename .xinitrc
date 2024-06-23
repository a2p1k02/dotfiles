nitrogen --restore
xinput --set-prop 13 306 -1
setxkbmap us,ru -option 'grp:alt_shift_toggle'
ibus-daemon -drx
dwmblocks &

exec dwm

#while true; do
#    dwm 2> ~/.dwm.log
#done

