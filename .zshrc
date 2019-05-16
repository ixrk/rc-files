# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _correct
zstyle :compinstall filename '/home/ixrk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh
source $HOME/.zsh_profile

#bindkey '^[[A' history-substring-search-up
#bindkey '^[[B' history-substring-search-down

#bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[5~' beginning-of-history
bindkey '^[[6~' end-of-history

setopt COMPLETE_ALIASES
setopt NO_AUTO_MENU
setopt COMPLETE_IN_WORD

autoload -Uz promptinit
promptinit
PROMPT='%F{red}%n%f@%F{blue}%m%f %F{yellow}%1~%f %# '

typeset -U path
path=(~/dev/bin/ $path[@])

source $HOME/.alias
# keychain for ssh, quiet
#eval $(keychain --eval --quiet id_ed25519 id_rsa)
