#
# ~/.zprofile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

if [[ -z $DISPLAY && ${XDG_VTNR:-0} -eq 1 ]]; then
    exec startx
fi
