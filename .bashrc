# Prompt
export PS1="\[\033[38;5;10m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\]@\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;39m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \w \[$(tput sgr0)\]\[\033[38;5;39m\]\\$:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

export SUDO_PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\]@\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;39m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\] \w \[$(tput sgr0)\]\[\033[38;5;9m\]\\$:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

# Colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# User Aliases
alias ls='ls --color=force'
alias la='ls -lah'
alias dd='dc3dd'
alias tree='tree -C'

