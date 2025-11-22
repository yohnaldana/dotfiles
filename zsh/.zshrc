# Yohnathan's  ZSH config
# c.2025
autoload -Uz vcs_info
precmd () { vcs_info }

# format vcs_info_msg_0
# zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)'

# Custom Prompt previous
# PROMPT="%F{250}%~%f %F{75}›%f "
# RPROMPT="%F{75}%t%f"

# Main prompt
PROMPT="%F{250}%~%f %F{75}›%f "

# export PATH="$HOME/your_directory:$PATH"
export PATH="$HOME/.scripts/:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# Aliases
alias dot='cd ~/.dotfiles/'
alias copy='pbcopy'
alias paste='pbpaste'
alias st='git status -sb'
alias ls='ls -lhGt'
alias ll='ls -ltG | grep -v "^total" | awk "{print \$NF}"'
