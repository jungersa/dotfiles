#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] &&
  . /usr/share/bash-completion/bash_completion

## Path
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

## Variables
export VISUAL='nvim'
export EDITOR='nvim'

##Aliases
alias ls='eza --color=auto'
alias grep='grep --color=auto'
alias cat='bat'
alias docker='podman'

## ls
alias ll='ls -alhF'
alias la='ls -a'
alias l='ls'

## ps
alias psa='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'

## Theme
export FZF_DEFAULT_OPTS=" \
--color=bg+:#363A4F,bg:#24273A,spinner:#F4DBD6,hl:#ED8796 \
--color=fg:#CAD3F5,header:#ED8796,info:#C6A0F6,pointer:#F4DBD6 \
--color=marker:#B7BDF8,fg+:#CAD3F5,prompt:#C6A0F6,hl+:#ED8796 \
--color=selected-bg:#494D64 \
--color=border:#6E738D,label:#CAD3F5"

eval "$(fzf --bash)"
eval -- "$(/usr/bin/starship init bash --print-full-init)"
