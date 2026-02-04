ZSH_CONFIG="$HOME/.zsh"

for file in "$ZSH_CONFIG"/*.zsh; do
    [ -r "$file" ] && source "$file"
done

eval "$(starship init zsh)"

