export PATH="/Users/ryichk/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="af-magic"

eval "$(anyenv init -)"

plugins=(
  git
  bundler
  docker
  dotenv
  macos
  rake
  rbenv
  ruby
)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(/usr/local/bin/brew shellenv)"
export PATH="/usr/local/opt/postgresql@16/bin:$PATH"

export GOPATH=$HOME/go
export PATH="$PATH:$GOPATH/bin"

alias g="git"
alias gs="g s"
alias gd="g diff"
alias gl="g log"
alias ga="g a"
alias ga.="g a . -p"
alias gcm="g cm"
alias gch="g ch"
alias gr="g rebase --autostash"
alias gri="g rebase -i --autostash"
alias gp="g p"
alias gpf="g pf"
alias gpul="g pull origin main"
alias d="docker"
alias dc="docker compose"
alias tf="terraform"
alias k="kubectl"
alias s="source"
alias b="bundle exec"
alias r="noti bin/rails"
alias rs="noti bin/rspec"
alias ya="noti bin/yarn"

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"

# 色を使用
autoload -Uz colors && colors

# zsh-completions (コマンド入力補完)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit && compinit
fi

autoload -U +X bashcompinit && bashcompinit

complete -o nospace -C /opt/homebrew/Cellar/tfenv/2.2.2/versions/0.12.5/terraform terraform

# python
export PATH="/usr/local/opt/python@3.14/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/ryichk/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="/usr/local/opt/node@20/bin:$PATH"

# bun completions
[ -s "/Users/ryichk/.bun/_bun" ] && source "/Users/ryichk/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Android
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export ANDROID_HOME="$ANDROID_SDK_ROOT"
export PATH="$ANDROID_SDK_ROOT/platform-tools:$ANDROID_SDK_ROOT/emulator:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk && export PATH=$PATH:$ANDROID_HOME/emulator && export PATH=$PATH:$ANDROID_HOME/platform-tools

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ryichk/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ryichk/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ryichk/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ryichk/google-cloud-sdk/completion.zsh.inc'; fi
