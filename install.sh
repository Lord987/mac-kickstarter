#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install kubernetes-cli

# Add all taps
brew tap mongodb/brew
brew tap instrumenta/instrumenta

brew install --cask emacs tunnelblick ajour altair-graphql-client postman docker vivaldi visual-studio-code slack discord
brew install httpie pass go zsh-completions kubectx kube-ps1 kustomize aws-iam-authenticator awscli drone-cli helm istioctl mongodb-community-shell \
    mongodb-database-tools conftest kubeval yamllint opa sops fluxcd/tap/flux jq node@14 curl
#brew install node kops

brew link node@14
