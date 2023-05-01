#!/bin/sh

### UTILS #####

#rmtrash alias (delete moving in trash)
alias del='trash-put'
alias trash='trash-put'

## git alias add . + commit + push
alias gitall='f(){ msg="$*"; git status; git add $(pwd); git commit -m "$msg"; git push; unset -f f; }; f'

#git log
alias gitlog='git log --graph --oneline --decorate'

## colored ls
alias ls='ls --color=auto'

## create folder and cd into it
alias mkdin='f(){ mkdir $1; cd $1; unset -f f;}; f'

#4 terminals (supposing 1 is already opened)
alias x4='terminator & terminator & terminator & sleep 1 && clear'
eval "$(thefuck --alias)"

## override polybar with custom theme
alias polybar='bash ~/.config/polybar/launch.sh --panels'


#### NVM & NODE ###

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

export NODE_PATH="$(which node)"

unset npm_config_prefix

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

clear


