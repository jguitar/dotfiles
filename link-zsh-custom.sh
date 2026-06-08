#!/usr/bin/env bash
#
# Symlink every *.zsh file in this repo's zsh.custom/ folder into
# ~/.oh-my-zsh/custom so oh-my-zsh loads them automatically.

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC_DIR="$DOTFILES_DIR/zsh.custom"
DEST_DIR="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

if [[ ! -d "$DEST_DIR" ]]; then
  echo "Destination $DEST_DIR does not exist. Is oh-my-zsh installed?" >&2
  exit 1
fi

shopt -s nullglob
for src in "$SRC_DIR"/*.zsh; do
  dest="$DEST_DIR/$(basename "$src")"
  ln -sfn "$src" "$dest"
  echo "Linked $(basename "$src") -> $dest"
done

echo "Done. Run 'source ~/.zshrc' or open a new shell to apply."
