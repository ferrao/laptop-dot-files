# Z completion
source /usr/local/bin/zsh-z.plugin.zsh

# Keybindings and Auto Suggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey -e
zstyle ':completion:*' special-dirs true
bindkey '^]' autosuggest-accept

