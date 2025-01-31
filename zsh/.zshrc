export ZSH="$HOME/.oh-my-zsh"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    rust
    nvm
    ng
)

source $ZSH/oh-my-zsh.sh

# User configuration

. "$HOME/.cargo/env"

export PATH="$PATH:/home/alecs/.dotnet/tools"
export PATH="$PATH:/home/alecs/go/bin"
export PATH="$PATH:/usr/local/go/bin"

alias cd="z"
alias ls="lsd"
alias cat="bat"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
