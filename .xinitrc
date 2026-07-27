# Keyboard
setxkbmap -option caps:escape 
setxkbmap -option compose:ralt 
xset r rate 300 50 

# X resources & wallpaper
~/.fehbg 
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources 

# Monitors
xrandr --output DP-0 --mode 1920x1080 --rate 100 --right-of HDMI-0 

# Desktop session environment
# export XDG_CURRENT_DESKTOP=dwm
# export XDG_SESSION_DESKTOP=dwm

export DISPLAY=:0
export XAUTHORITY="$HOME/.Xauthority"
systemctl --user import-environment DISPLAY XAUTHORITY
dbus-update-activation-environment --systemd DISPLAY XAUTHORITY

# Misc background services
picom &
xbindkeys &
dunst &
redshift &
dwmblocks &

exec dwm
