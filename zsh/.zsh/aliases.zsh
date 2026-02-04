
if command -v lsd &>/dev/null; then
  alias ls='lsd'
else
  alias ls='ls --color=auto'
fi

command -v bat &>/dev/null && alias cat='bat'

if command -v nvim &>/dev/null; then
  alias vim="nvim"
  alias vi="nvim"
fi

alias la='ls -la'
alias ll='ls -l'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

