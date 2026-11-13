#!/usr/bin/env bash
set -euo pipefail

# stow zsh neovim tmux git openssh

if ! command -v stow >/dev/null 2>&1; then
  echo "Error: 'stow' no está instalado." >&2
  exit 1
fi

touch "$HOME/.zshrc"

MARKER="# Load modular .zsh configs"

if ! grep -Fqs "$MARKER" "$HOME/.zshrc"; then
  cp "$HOME/.zshrc" "$HOME/.zshrc.bak"
  
  cat << 'EOF' >> "$HOME/.zshrc"

# Load modular .zsh configs
for file in "$HOME"/.zsh/*.zsh(N); do
  source "$file"
done

# Run tmux initialization last
typeset -f auto_start_tmux > /dev/null && auto_start_tmux
EOF

  echo "Configuración agregada a .zshrc"
else
  echo "La configuración ya existe en .zshrc"
fi

packages=(zsh tmux alacritty nvim walls)

for pkg in "${packages[@]}"; do
  if [ -d "$pkg" ]; then
    stow -R "$pkg"
    echo "Stow aplicado: $pkg"
  else
    echo "Aviso: Directorio '$pkg' no encontrado, omitiendo..."
  fi
done

mkdir -p ~/.config/tmux/plugins/catppuccin
git clone -b v2.3.2 https://github.com/catppuccin/tmux.git ~/.config/tmux/plugins/catppuccin/tmux
