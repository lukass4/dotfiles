#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

startx &
fixmonitors &
xrandr --output DP-0 --mode 1920x1080 --rate 100 --right-of HDMI-0 &
xrdb /home/lukas/.Xresources
