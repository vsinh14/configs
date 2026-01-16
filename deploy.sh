#!/usr/bin/env bash
set -euo pipefail

# This script copies the repository's Vim configuration into your home directory.
# It backs up any existing targets to a timestamped .bak file before copying.

script_dir="$(cd -- "$(dirname -- "$0")" && pwd)"
src_vimrc="$script_dir/.vimrc"
src_nvim="$script_dir/nvim"
target_vimrc="$HOME/.vimrc"
target_nvim="$HOME/.config/nvim"

backup() {
  local path="$1"
  if [ -e "$path" ] || [ -L "$path" ]; then
    local backup_path="${path}.bak.$(date +%Y%m%d%H%M%S)"
    echo "Backing up $path to $backup_path"
    mv "$path" "$backup_path"
  fi
}

# Validate sources
if [ ! -f "$src_vimrc" ]; then
  echo "Source vimrc not found at $src_vimrc" >&2
  exit 1
fi

if [ ! -d "$src_nvim" ]; then
  echo "Source nvim directory not found at $src_nvim" >&2
  exit 1
fi

mkdir -p "$HOME/.config"

backup "$target_vimrc"
backup "$target_nvim"

cp "$src_vimrc" "$target_vimrc"
cp -a "$src_nvim" "$target_nvim"

echo "Installed vimrc to $target_vimrc"
echo "Installed nvim config to $target_nvim"