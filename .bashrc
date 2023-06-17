#!/bin/sh

#kaf completion
# kaf completion bash > /etc/bash_completion.d/kaf

#aliases
alias ls='ls --color=auto'
alias mkdin='f(){ mkdir $1; cd $1; unset -f f;}; f'
alias del='trash-put'
alias trash='trash-put'
alias gitall='f(){ msg="$*"; git status; git add $(pwd); git commit -m "$msg"; git push; unset -f f; }; f'
alias gitlog='git log --graph --oneline --decorate'
alias gpt='~/Downloads/gpt-cli/gpt.py dev --no_price'
alias killtmux='tmux kill-server'
alias polybar='bash ~/.config/polybar/launch.sh --panels'
alias emacs='emacsclient -c -a "emacs"'

#fuck cmd
eval "$(thefuck --alias)"

#### NVM & NODE ###

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

export NODE_PATH="$(which node)"

unset npm_config_prefix\

## prompt customization
function get_git_branch {
	git_branch_txt=""
	git_branch="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)" 
	if [[ $git_branch != "" ]]; then git_branch_txt="[\033[96m$git_branch\033[m] "; fi
	printf "$git_branch_txt"
}

PS1="\u: \[\033[01;1m\]\W\[\033[m\] \$(get_git_branch)> "

unset git_branch
unset git_branch_txt

source "$(pwd)/.smartpricing.bashrc"
source "$(pwd)/.secrets.bashrc"

export PATH="$HOME/.emacs.d/bin:$PATH"

clear

# tmuxinator start "Utils - Terminals"