# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
autoload -Uz compinit && compinit
zstyle :compinstall filename '/home/brook/.zshrc'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PATH="$PATH:/opt/nvim-linux64/bin"

#Codeforce CLI
export PATH="$HOME/.myProg:$PATH"
# Add to your .zshrc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias ls='eza'
alias proj_kilo='cd /home/brook/Code/Projects/meh_nano'


#zoxide config
eval "$(zoxide init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Starsihp config
eval "$(starship init zsh)"
export PATH=$PATH:/home/brook/.spicetify

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads NVM1

#Go config
export PATH=$PATH:/usr/local/go/bin
