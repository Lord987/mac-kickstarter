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
PROMPT='%B%F{166}%1~%f%b - $(kube_ps1) %# %F{7}'
#PS1='$(kube_ps1)'$PS1

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git

export EDITOR='emacs -nw'

PATH=$PATH:~/bin

## ALIASES ##
alias k='kubectl'
alias kn='kubens'
alias kctx='kubectx'
alias kc='kubectl create'
alias kcf='kubectl create -f'
alias kg='kubectl get'
alias kga='kubectl get all'
alias kd='kubectl describe'
alias kdd='kubectl describe deployments'
alias kdc='kubectl describe certificate'
alias ke='kubectl edit'
alias kex='kubectl exec -i -t --request-timeout=0'
alias kl='kubectl logs --tail 100 -f'
alias kla='kubectl logs --tail 100 -f --all-containers=true  --selector'
alias expkc='export KUBECONFIG='