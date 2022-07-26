autoload -U compinit && compinit

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

KUBE_PS1_SYMBOL_ENABLE=false

source "$(brew --prefix)/opt/kube-ps1/share/kube-ps1.sh"
#166
#051
PROMPT='%B%F{57}%1~%f%b - $(kube_ps1) %# %F{7}'
#PS1='$(kube_ps1)'$PS1

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

export EDITOR='emacs -nw'
export HOMEBREW_FORCE_BREWED_CURL=1 # TODO remove
PATH="/usr/local/opt/curl/bin":$PATH:~/bin # PATH=$PATH:~/bin

## ALIASES ##
# Kubernetes
alias k='kubectl'
alias kn='kubens'
alias kctx='kubectx'
alias kc='kubectl create'
alias kcf='kubectl create -f'
alias kaf='kubectl apply -f'
alias kak='kubectl apply -k'
alias kdifff='kubectl diff -f'
alias kdiffk='kubectl diff -k'
alias kg='kubectl get'
alias kgy='kubectl get -oyaml'
alias kga='kubectl get all'
alias kgal='kubectl get all --all-namespaces -l'
alias kgel='kubectl get events --all-namespaces'
alias kd='kubectl describe'
alias kdd='kubectl describe deployments'
alias kdc='kubectl describe certificate'
alias ke='kubectl edit'
alias kex='kubectl exec -i -t --request-timeout=0'
alias kl='kubectl logs --tail 100 -f'
alias kla='kubectl logs --tail 100 -f --all-containers=true  --selector'
alias kjef='kubectl create job --from=cronjob/' #jobname manualjobname
alias expkc='export KUBECONFIG='

alias manifest='cd ~/Documents/Projects/gitops/'

# Drone
alias doa='drone orgsecret add'
alias dss='drone sign --save'

alias clean-drone="kubectl get jobs -n drone --no-headers=true | awk '/drone-job-*/{print $1}'| xargs kubectl delete -n drone job"

alias ggr="git config --get remote.origin.url"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
