#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Not used anymore with zsh
#brew install bash-completion
#echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bashrc

brew install kubernetes-cli
#kubectl completion bash > $(brew --prefix)/etc/bash_completion.d/kubectl

# Not used anymore with zsh
# cd /usr/local/etc/bash_completion.d \
#     && ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion \
#     && ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion \
#     && ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion

# Not used when installing with homebrew
# ln -s /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
# ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
# ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose

brew cask install emacs tunnelblick ajour altair-graphql-client postman docker vivaldi
brew install httpie pass go zsh-completions kubectx kube-ps1 kustomize aws-iam-authenticator awscli drone-cli helm istioctl mongodb-community-shell \
    mongodb-database-tools conftest kubeval yamllint opa sops flux jq
#brew install node kops
