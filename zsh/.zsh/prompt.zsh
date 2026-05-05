# Enable colors
autoload -U colors && colors

# Set the prompt
PROMPT=$'%F{blue}┌──(%F{white}%n@%m%F{blue})-[%F{white}%~%F{blue}]
└─%F{blue}$%f '

# Optional: Change the prompt color to red if you are root
if [[ $EUID -eq 0 ]]; then
  PROMPT=$'%F{red}┌──(%F{white}%n@%m%F{red})-[%F{white}%~%F{red}]
└─%F{red}#%f '
fi
