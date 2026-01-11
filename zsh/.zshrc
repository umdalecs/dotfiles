# ===========================
# Options
# ===========================
setopt autocd
setopt interactivecomments
setopt magicequalsubst
setopt nonomatch
setopt notify
setopt numericglobsort

# ===========================
# History
# ===========================
HISTFILE=~/.zsh_history

HISTSIZE=5000
SAVEHIST=5000

setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify

alias history="history 0"

# ===========================
# Plugins
# ===========================
if [[ -f "/usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
  source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
elif [[ -f "/usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" ]]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -f "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ -f "/usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ===========================
# Aliases
# ===========================
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

# ===========================
# JetBrains
# ===========================
export PATH="$PATH:$HOME/.local/share/JetBrains/Toolbox/scripts"

# ===========================
# Cargo (Rust)
# ===========================
command -v rustup &>/dev/null && source "$HOME/.cargo/env"

# ===========================
# FNM (Node)
# ===========================
command -v fnm &>/dev/null && eval "$(fnm env --shell zsh)"

# ===========================
# SDKMAN
# ===========================
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"

# ===========================
# Bun
# ===========================
if [[ -s "/home/alecs/.bun/_bun" ]] then
    source "/home/alecs/.bun/_bun"

    export BUN_INSTALL="$HOME/.bun"
    export PATH="$BUN_INSTALL/bin:$PATH"
fi 

# ===========================
# Deno
# ===========================
# ===========================
. "/home/alecs/.deno/env"

# Prompt
# ===========================
eval "$(starship init zsh)"
