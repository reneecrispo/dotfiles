export PATH="$HOME/bin:$PATH"

# iTerm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Enable colors
autoload -U colors && colors

# Show ~ and keep only last directory expanded
PROMPT_DIRTRIM=2

# Enable vcs_info
autoload -Uz vcs_info

# Only enable git support
zstyle ':vcs_info:*' enable git

# Format branch, we'll append status symbols in a hook
zstyle ':vcs_info:git:*' formats '(%b%u)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u)'

# Hook to calculate Git status symbols
function git-dirty() {
  local git_status
  git_status=$(git status --porcelain 2>/dev/null)

  local symbols=""

  # untracked
  [[ -n $(echo "$git_status" | grep '^??') ]] && symbols+="*"
  # staged
  [[ -n $(echo "$git_status" | grep '^[AMDR]') ]] && symbols+="+"
  # conflicts
  [[ -n $(echo "$git_status" | grep '^UU') ]] && symbols+="!"

  vcs_info_msg_0_="${vcs_info_msg_0_//$vcs_info_msg_0_/%b}$symbols"
}

# Register hook
zstyle ':vcs_info:git:*' hooks git-dirty

# Update vcs_info before each prompt
precmd() { vcs_info }

# Prompt
PROMPT="%F{cyan}%n%f %F{yellow}@%f %F{green}%m%f %F{magenta}%1~%f %F{white}%#%f "

# Run pfetch on terminal start
pfetch

# fzf
[ -f /opt/local/share/fzf/key-bindings.zsh ] && source /opt/local/share/fzf/key-bindings.zsh
[ -f /opt/local/share/fzf/completion.zsh ] && source /opt/local/share/fzf/completion.zsh

# petsc
export PETSC_DIR=/opt/local/lib/petsc

# rmtrash
alias rm='rmtrash'

export PATH="/Library/TeX/texbin:$PATH"

alias vizir4="/Applications/vizir4.app/Contents/MacOS/vizir4"

# FreeFem
export PATH="/Applications/FreeFem++.app/Contents/MacOS:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Alias for MasterFSI
alias MasterFSI="/Users/rcrispo/Projects/MasterFSIContact/bin/Release/ZMQ/bin/MasterFSI" 
