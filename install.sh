#!/bin/bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install bash-completion
#echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bashrc

brew install kubernetes-cli
#kubectl completion bash > $(brew --prefix)/etc/bash_completion.d/kubectl

cd /usr/local/etc/bash_completion.d \
    && ln -s /Applications/Docker.app/Contents/Resources/etc/docker.bash-completion \
    && ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.bash-completion \
    && ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.bash-completion

ln -s /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose

brew cask install emacs tunnelblick
#brew cask install vivaldi
brew install httpie pass go zsh-completion kubectx kube-ps1 kustomize
#brew install node
