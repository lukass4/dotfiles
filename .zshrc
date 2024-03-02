#
# Lukas's ~/.zshrc
#

# Changing colours and adding font
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[cyan]%}%n%{$fg[green]%}@%{$fg[blue]%}%M%{$fg[red]%}] %{$fg[magenta]%}%~ %{$reset_color%}$%b "

setopt histignorealldups sharehistory

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

for f in ~/.config/shell/*; do source "$f"; done

source ~/.config/shell/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=$PATH:/home/lukas/.scripts
