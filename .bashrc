#!/bin/sh

### UTILS #####

#rmtrash alias (delete moving in trash)
alias del='trash-put'
alias trash='trash-put'

## git alias add . + commit + push
alias gitall='f(){ git status; git add $(pwd); git commit -m "$1"; git push; unset -f f; }; f'

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

PS1=" \u: \[\033[01;1m\]\w\[\033[m\] \$ "

source .smartpricing.bashrc

clear


