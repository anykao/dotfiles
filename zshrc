export EDITOR='nvim'
export ANDROID_HOME=$HOME/Android/Sdk
export GOROOT="$HOME/go"
export GOPATH="$HOME/gopath"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:$GOROOT/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/.skim/bin"
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/gradle/bin"
export PATH="$PATH:$HOME/node/bin"
export PATH="$PATH:$HOME/swift/usr/bin"
export PATH="$HOME/.fastlane/bin:$PATH"
export EM_CONFIG=$HOME/.emscripten
export RUST_SRC_PATH="$HOME/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"
export RUST_BACKTRACE=1
export FZF_DEFAULT_COMMAND='ag -g ""'
export HISTORIAN_SRC=$HOME/.zsh_history
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"

alias notify="curl -s --form-string 'token=$TOKEN' --form-string 'user=$UID' --form-string 'message=$MSG' https://api.pushover.net/1/messages.json"
alias vi='nvim'
alias vide='nvim -u $HOME/.config/nvim/ide.vim'
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

