https://docs.brew.sh/Shell-Completion

For Zsh you may also need to force rebuild `zcompdump`:
    rm -f ~/.zcompdump; compinit

And add `autoload -U compinit && compinit` to .zshrc

For docker completion :
    https://docs.j7k6.org/docker-zsh-completion-macos/