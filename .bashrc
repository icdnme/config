export XENVIRONMENT="${HOME}/.Xresources"
export EDITOR=vim
set -o vi
export HISTCONTROL=ignoreboth

function fancy_prompt {
  local grey='\[\e[0;30m\]'
  local red='\[\e[0;31m\]'
  local green='\[\e[0;32m\]'
  local orange='\[\e[0;33m\]'
  local blue='\[\e[0;34m\]'
  local clear='\[\e[0m\]'
  local branch
  if branch=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD 2> /dev/null)
  then
    local color
    if git diff-index --quiet HEAD --
    then
      color="${green}"
    else
      color="${red}"
    fi
    if [[ "$branch" =~ ^honda/.* ]]
    then
      PS1="${color}[${blue}·${green}${branch#honda}${color}]${blue}\w${grey}\$${clear} "
    else
      PS1="${color}[${orange}${branch}${color}]${blue}\w${grey}\$${clear} "
    fi
  else
    PS1="${clear}[${grey}g̶i̶t̶${clear}]${blue}\w${grey}\$${clear} "
  fi
}
export PROMPT_DIRTRIM=1
export PROMPT_COMMAND=fancy_prompt
