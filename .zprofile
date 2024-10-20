#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

startx &
fixmonitors &
xrdb /home/lukas/.Xresources
