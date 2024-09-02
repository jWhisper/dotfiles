# zsh
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source $HOME/.config/zsh/zsh-z/zsh-z.plugin.zsh

bindkey              '^I'         menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete

# Starship
# export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
# starship config palette $STARSHIP_THEME

# fzf
source <(fzf --zsh)
# fzf use fd
export FZF_DEFAULT_COMMAND='fdfind --type file --follow --hidden --exclude .git'

# nvim
export "PATH=$PATH:/opt/nvim-linux64/bin"
