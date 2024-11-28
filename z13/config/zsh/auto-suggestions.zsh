# Z completion
source /usr/share/zsh/plugins/zsh-z/zsh-z.plugin.zsh

# Keybindings and Auto Suggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

bindkey -e
zstyle ':completion:*' special-dirs true
bindkey '^]' autosuggest-accept

