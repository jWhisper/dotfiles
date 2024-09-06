# zsh Options
# HISTFILE=....
HISTSIZE=10000
SAVEHIST=10000
setopt APPENDHISTORY
setopt HIST_IGNORE_ALL_DUPS

# Custom zsh
[ -f "$HOME/.config/zsh/custom.zsh" ] && source "$HOME/.config/zsh/custom.zsh"

# Aliases
[ -f "$HOME/.config/zsh/aliases.zsh" ] && source "$HOME/.config/zsh/aliases.zsh"

# Work
[ -f "$HOME/.config/zsh/work.zsh" ] && source "$HOME/.config/zsh/work.zsh"

###############
## Key Mapping#
###############

bindkey              '^I'         menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete
