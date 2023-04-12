#!/bin/sh

## JIRA_CLI
export JIRA_API_TOKEN='ATATT3xFfGF08VwewCqzhvGzyhLrvwen8z16HrqPenV_158ucJA5gL9GbHFdjcaxLOZqRVKfoO9BNf6-bUGd4DfB4th6GPPPXOr844SKi6LvoP7Hctd7GQkjcLjbv7gBViP8_92xtijWHbDtKTTtY_NNyvLLSCYT4C3X8u8JeOHrUOcFGPmHVkE=524BB2F3'

#############
### UTILS ###
#############

## git alias add . + commit + push
alias gitall='f(){ git status; git add $(pwd); git commit -m "$1"; git push; unset -f f; }; f'

## colored ls
alias ls='ls --color=auto'

## create folder and cd into it
alias mkdin='f(){ mkdir $1; cd $1; unset -f f;}; f'

#4 terminals (supposing 1 is already opened)
alias x4='terminator & terminator & terminator & sleep 1 && clear'
eval "$(thefuck --alias)"

## sublime shortcuts
alias fsubl='subl . & exit'
alias sublime='f(){ echo "$1"; subl "$1"; unset -f f; exit;}; f'

## vscode override
alias code='f(){ echo "$1"; code "$1"; unset -f f; exit;}; f'

## override polybar
alias polybar='bash ~/.config/polybar/launch.sh --panels'



### SMARTPRICING ###

#SmarPricing fast browser opening
alias standup='chromium "https://meet.google.com/wny-hrbd-kvv?pli=1&authuser=1" "https://smartpricing-it.atlassian.net/plugins/servlet/ac/com.tda.timesheet.report/main?project.key=INT&project.id=10014" > /dev/null 2> /dev/null  &'
alias spchr='chromium https://app.slack.com/client/TT20Y7A04/C01RDB3K8BZ https://mail.google.com/mail/u/1/#inbox https://calendar.google.com/calendar/u/1/r?pli=1 > /dev/null 2> /dev/null  &'

#SmartPricing fast docker-compose start/stop
alias sprun='/home/giovanni/Scripts/dockerSP/runContainersSP.sh'
alias spstop='/home/giovanni/Scripts/dockerSP/stopContainersSP.sh'

#SmartPricing fast kubernetes access
#gpcs-cli prod
alias spprodexec='echo "INTEGRATIONS PRODUCTION CLI" &&  GPCSPRODPOD=$(kubectl get pods -n sp-prod-hpc | grep "sp-gpcs-cli" | cut -d " " -f1) &&  kubectl exec --stdin --tty -n sp-prod-hpc $GPCSPRODPOD -- /bin/sh'
#gpcs-cli tech-support
alias sptsexec='echo "INTEGRATIONS TECH-SUPPORT CLI" && GPCSTSPOD=$(kubectl get pods -n sp-tech-support | grep "sp-gpcs-cli" | cut -d " " -f1) &&  kubectl exec --stdin --tty -n sp-tech-support $GPCSTSPOD -- /bin/sh'
#integration-service tech-support logs
alias sptslogs='echo "INTEGRATIONS TECH-SUPPORT LOGS" && ISTSPOD=$(kubectl get pods -n sp-tech-support | grep "sp-integration-service" | cut -d " " -f1) &&  kubectl logs -n sp-tech-support -f $ISTSPOD'
#sp-sync-prod gateway logs
alias spsynclogsgt1='GTSYNCPOD=$(kubectl get pods -n sp-sync-prod | grep "sp-integration-rest" | cut -d " " -f1 | sed "1p;d" ) &&  echo $GTSYNCPOD && kubectl logs -n sp-sync-prod -f $GTSYNCPOD'
alias spsynclogsgt2='GTSYNCPOD=$(kubectl get pods -n sp-sync-prod | grep "sp-integration-rest" | cut -d " " -f1 | sed "2p;d" ) &&  echo $GTSYNCPOD && kubectl logs -n sp-sync-prod -f $GTSYNCPOD'
#sp-sync-prod int rest logs
alias spsynclogs1='GTSYNCPOD=$(kubectl get pods -n sp-sync-prod | grep "sp-integration-service" | cut -d " " -f1 | sed "1p;d" ) &&  echo $GTSYNCPOD && kubectl logs -n sp-sync-prod -f $GTSYNCPOD'
alias spsynclogs2='GTSYNCPOD=$(kubectl get pods -n sp-sync-prod | grep "sp-integration-service" | cut -d " " -f1 | sed "2p;d" ) &&  echo $GTSYNCPOD && kubectl logs -n sp-sync-prod -f $GTSYNCPOD'
#tech-support pods
alias sptspods='kubectl get pods -n sp-tech-support'
#prod pods
alias spprodpods='kubectl get pods -n sp-prod-hpc'
#sync-prod pods
alias spsyncpods='kubectl get pods -n sp-sync-prod'

## NEW PIPELINE ALIASES ##
alias gpcs='cd /home/giovanni/SmartPricing/sources/sp-gpcs-interface'
alias gpcscli='f(){ echo 'NS:' " sp-gpcs-pipeline-$1"; GTSYNCPOD=$(kubectl get pods -n sp-gpcs-pipeline-$1 | grep "sp-gpcs-cli" | cut -d " " -f1 | sed "1p;d" ); echo 'POD:' $GTSYNCPOD; kubectl exec --stdin --tty -n sp-gpcs-pipeline-$1 $GTSYNCPOD -- /bin/sh; unset -f f; }; f'
alias downloader='f(){ echo 'NS:' " sp-gpcs-pipeline-$1"; GTSYNCPOD=$(kubectl get pods -n sp-gpcs-pipeline-$1 | grep "sp-reservation-downloader" | cut -d " " -f1 | sed "$2p;d" ); echo 'POD:' $GTSYNCPOD; kubectl logs -n sp-gpcs-pipeline-$1 -f $GTSYNCPOD; unset -f f; }; f'
alias parser='f(){ echo 'NS:' " sp-gpcs-pipeline-$1"; GTSYNCPOD=$(kubectl get pods -n sp-gpcs-pipeline-$1 | grep "sp-reservation-parser" | cut -d " " -f1 | sed "$2p;d" ); echo 'POD:' $GTSYNCPOD; kubectl logs -n sp-gpcs-pipeline-$1 -f $GTSYNCPOD; unset -f f; }; f'
alias checker='f(){ echo 'NS:' " sp-gpcs-pipeline-$1"; GTSYNCPOD=$(kubectl get pods -n sp-gpcs-pipeline-$1 | grep "sp-reservation-checker" | cut -d " " -f1 | sed "$2p;d" ); echo 'POD:' $GTSYNCPOD; kubectl logs -n sp-gpcs-pipeline-$1 -f $GTSYNCPOD; unset -f f; }; f'
alias servicepg='f(){ echo 'NS:' " sp-gpcs-pipeline-$1"; GTSYNCPOD=$(kubectl get pods -n sp-gpcs-pipeline-$1 | grep "sp-reservation-service-pg" | cut -d " " -f1 | sed "$2p;d" ); echo 'POD:' $GTSYNCPOD; kubectl logs -n sp-gpcs-pipeline-$1 -f $GTSYNCPOD; unset -f f; }; f'
alias gateway='f(){ echo 'NS:' " sp-gpcs-pipeline-$1"; GTSYNCPOD=$(kubectl get pods -n sp-gpcs-pipeline-$1 | grep "sp-partners-gateway" | cut -d " " -f1 | sed "$2p;d" ); echo 'POD:' $GTSYNCPOD; kubectl logs -n sp-gpcs-pipeline-$1 -f $GTSYNCPOD; unset -f f; }; f'
alias watcher='f(){ echo 'NS:' " sp-gpcs-pipeline-$1"; GTSYNCPOD=$(kubectl get pods -n sp-gpcs-pipeline-$1 | grep "sp-events-watcher" | cut -d " " -f1 | sed "$2p;d" ); echo 'POD:' $GTSYNCPOD; kubectl logs -n sp-gpcs-pipeline-$1 -f $GTSYNCPOD; unset -f f; }; f'
alias cpods='f(){ echo 'NS:' " sp-gpcs-pipeline-$2"; echo 'POD:' "sp-$1"; kubectl get pods -n sp-gpcs-pipeline-$2 | grep "sp-$1" | wc -l; unset -f f; }; f'

# export WASMTIME_HOME="$HOME/.wasmtime"
export PATH="$PATH:/home/giovanni/.local/share/coursier/bin"

export PATH="$WASMTIME_HOME/bin:$PATH"
. "$HOME/.cargo/env"


#export PS1='\u@\h\e[0m \e[1m\W\e[0m \e[1m➤ \e[0m'

#source /home/giovanni/.config/broot/launcher/bash/br
#source /usr/share/nvm/init-nvm.sh

#### NVM ###

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 

export NODE_PATH="$(which node)"


unset npm_config_prefix

clear

