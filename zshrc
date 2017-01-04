export EDITOR='nvim'
export ANDROID_HOME=$HOME/Android/Sdk
export GOROOT="$HOME/go/"
export GOPATH="$HOME/gopath/"
export GOWORK="$GOPATH/src/github.com/anykao"
export PATH="$PATH:$HOME/VSCode-linux-x64/bin:$GOROOT/bin:$GOPATH/bin:$HOME/node/bin:${ANDROID_HOME}/tools"

alias vi='nvim'
alias python=python3
alias pip=pip3

[[ -z "$TMUX" && ! -z "$PS1" ]] && exec tmux

if [ -f $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash ]; then
    . $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash
fi

export FZF_DEFAULT_COMMAND='ag -g ""'
export RUST_SRC_PATH="$HOME/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"
export ANDROID_HOME=/home/innolab/Android/Sdk
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function reconnect(){
  sudo service network-manager restart
}

