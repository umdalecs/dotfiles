#!/usr/bin/env bash
set -euo pipefail

LINE_TO_ADD="source \$HOME/.zsh/configs.zsh"

if ! command -v stow >/dev/null 2>&1; then
  echo "Error: 'stow' no está instalado." >&2
  exit 1
fi

touch "$HOME/.zshrc"

if ! grep -Fqs "$LINE_TO_ADD" "$HOME/.zshrc"; then
  cp "$HOME/.zshrc" "$HOME/.zshrc.bak"
  echo "$LINE_TO_ADD" >> "$HOME/.zshrc"
  echo "Línea agregada a .zshrc"
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
