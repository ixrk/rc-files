#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd direxpand

[[ -f /usr/share/bash-completion/bash_completion ]] && . /usr/share/bash-completion/bash_completion
[[ -f /usr/share/doc/pkgfile/command-not-found.bash ]] && . /usr/share/doc/pkgfile/command-not-found.bash
[[ -f ~/.alias ]] && . ~/.alias

export PS1="\[\e[31m\]\u\[\e[m\]@\[\e[34m\]\h\[\e[m\] \[\e[33m\]\W\[\e[m\] \\$ "

# keychain for ssh
# eval $(keychain --eval --quiet id_ed25519 id_rsa)

# gpg-agent as ssh-agent
#export GPG_TTY=$(tty)
#gpg-connect-agent updatestartuptty /bye >/dev/null

# Console colors
if [ "$TERM" = "linux" ]; then
  /bin/echo -e "
  \e]P0002b36
  \e]P1dc322f
  \e]P2859900
  \e]P3b58900
  \e]P4268bd2
  \e]P56c71c4
  \e]P62aa198
  \e]P793a1a1
  \e]P8657b83
  \e]P9dc322f
  \e]PA859900
  \e]PBb58900
  \e]PC268bd2
  \e]PD6c71c4
  \e]PE2aa198
  \e]PFfdf6e3
  "
  # get rid of artifacts
  clear
fi
