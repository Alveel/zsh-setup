source "$ZDOTDIR/env.zsh"
source "$HOME/.profile"
source "$ZDOTDIR/history.zsh"
source "$ZDOTDIR/completions.zsh"
source "$ZDOTDIR/aliases.zsh"
source "$ZDOTDIR/keybinds.zsh"

autoload -Uz compinit
compinit

source "$ZDOTDIR/tools.zsh"

#############
# ZSH STUFF #
#############

# Disable beep
unsetopt BEEP

