picom &
setxkbmap -option caps:escape &
xset r rate 300 50 &
xbindkeys &
dunst &
xinput --set-prop 9 'libinput Accel Speed' &
~/.fehbg &
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources &
dwmblocks &
exec dwm
