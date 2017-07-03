function stashy() {
  local command=$1
  local parameter=$2

  if [[ "$parameter" == "last" ]] || ! [[ "$parameter" ]]; then
      parameter="0"
  fi

  if [[ $command =~ ^[0-9]+$ ]]; then
    git stash show stash@{$command} -p
  elif [[ "$command" == "show" ]]; then
    git stash show stash@{$parameter} -p
  elif [[ "$command" == "list" ]]; then
    git stash list -p 
  elif [[ "$command" == "unstaged" ]]; then
    git stash --keep-index
  elif [[ "$command" == "pop" ]]; then
    git stash pop stash@{$parameter} 
  elif [[ "$command" == "apply" ]]; then
    git stash apply stash@{$parameter} 
  elif [[ "$command" == "drop" ]]; then
    git stash drop stash@{$parameter} 
  elif [[ "$command" == "clear" ]]; then
    git stash clear
  elif [[ "$command" == "all" ]]; then
    git stash --include-untracked
  elif [[ "$command" == "patch" ]]; then
    git stash --patch
  elif ! [[ "$command" ]]; then
    git stash
  else
    echo "Please enter a valid command"
  fi
}

