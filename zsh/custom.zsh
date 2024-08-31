# zsh
source $HOME/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source $HOME/.config/zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
bindkey              '^I'         menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete

source $HOME/.config/zsh/zsh-z/zsh-z.plugin.zsh

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init zsh)"
starship config palette $STARSHIP_THEME

# fzf
source <(fzf --zsh)

# nvim
export "PATH=$PATH:/opt/nvim-linux64/bin"

# fd
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'
