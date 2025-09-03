alias copy='pbcopy'
alias paste='pbpaste'
alias st='git status -sb'


autoload -Uz vcs_info
precmd () { vcs_info }

# format vcs_info_msg_0
# zstyle ':vcs_info:*' formats ' %s(%F{red}%b%f)'

# Custom Prompt previous
# PROMPT="%F{250}%~%f %F{75}›%f "
# RPROMPT="%F{75}%t%f"

# Main prompt
PROMPT="%F{250}%~%f %F{75}›%f "
