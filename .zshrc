export PATH="/opt/homebrew/bin:$PATH"

eval "$(anyenv init -)"

alias g="git"
alias d="docker"
alias dc="docker-compose"
alias tf="terraform"
alias k="kubectl"

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
