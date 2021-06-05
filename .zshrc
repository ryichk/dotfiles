export PATH="/opt/homebrew/bin:$PATH"

eval "$(anyenv init -)"

alias g="git"
alias d="docker"
alias dc="docker-compose"

# git branch name color
function rprompt-git-current-branch {
  local branch_name st branch_status

  if [ ! -e ".git" ]; then
    return
  fi
  branch_name=`git rev-parse --abbrev-ref HEAD 2> /dev/null`
  st=`git status 2> /dev/null`
  if [[ -n `echo "$st" | grep "^nothing to"` ]]; then
    branch_status="%F{green}"
  elif [[ -n `echo "$st" | grep "^Untracked files"` ]]; then
    branch_status="%F{red}?"
  elif [[ -n `echo "$st" | grep "^Changes not staged for commit"` ]]; then
    branch_status="%F{red}+"
  elif [[ -n `echo "$st" | grep "^Changes to be committed"` ]]; then
    branch_status="%F{yellow}!"
  elif [[ -n `echo "$st" | grep "^rebase in progress"` ]]; then
    echo "%F{red}!(no branch)"
    return
  else
    branch_status="%F{blue}"
  fi
  echo "${branch_status}[$branch_name]"
}
setopt prompt_subst
PROMPT="`rprompt-git-current-branch`"

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
