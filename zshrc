export EDITOR='nvim'
export ANDROID_HOME=$HOME/Android/Sdk
export GOROOT="$HOME/go"
export GOPATH="$HOME/gopath"
export PATH="$PATH:$HOME/.cargo/bin:$HOME/gradle/bin/:$HOME/swift/usr/bin/:$GOROOT/bin:$GOPATH/bin:$HOME/node/bin:$ANDROID_HOME/tools:$HOME/bin"
export EM_CONFIG=$HOME/.emscripten
export RUST_SRC_PATH="$HOME/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"
export FZF_DEFAULT_COMMAND='ag -g ""'
export PATH="$PATH:$HOME/.skim/bin"

alias vi='nvim'
alias vin="nvim --noplugin"
alias gowork="cd $GOPATH/src/gowork"
alias registry="cd $HOME/.cargo/registry/src"
alias python=python3
alias pip=pip3
setopt nocorrect

[[ -z "$TMUX" && ! -z "$PS1" ]] && exec tmux

if [ -f $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash ]; then
    . $GOPATH/src/github.com/zquestz/s/autocomplete/s-completion.bash
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

function reconnect(){
  sudo service network-manager restart
}

