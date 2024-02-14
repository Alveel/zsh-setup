##################
# EXTERNAL TOOLS #
##################

# Zoxide / cd replacement
eval "$(zoxide init zsh)"

# Sheldon
eval "$(sheldon source)"

# Fuck
eval "$(thefuck --alias)"

# Starship
eval "$(starship init zsh)"

# Start ssh-agent
if [ -n "$DISPLAY" ];
then
    eval $(keychain --eval id_ed25519 id_rsa --agents ssh,gpg --systemd --quick --quiet)
else
    eval $(keychain --eval id_ed25519 id_rsa --agents ssh,gpg --systemd --quick --quiet --noask)
fi

# MinIO client completion
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/mc mc

