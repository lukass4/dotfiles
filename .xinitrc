picom &
setxkbmap -option caps:escape &
xset r rate 300 50 &
xbindkeys &
dunst &
xinput --set-prop 9 'libinput Accel Speed' &
~/.fehbg &
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources &
dwmblocks &
xrandr --output HDMI-0 --mode 1920x1080 --pos 0x0 --primary --output DP-0 --mode 1920x1080 --pos 1920x0 &
exec dwm
