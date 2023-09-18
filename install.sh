#!/usr/bin/env sh

brew install \
  fnm \
  git-lfs \
  lazygit \
  luarocks \
  pgcli \
  pnpm \
  rust

brew install --cask \
  kitty \
  neovide \
  numi \
  raycast

cargo install --git https://github.com/synecdokey/starship

# LSP-related tooling
pnpm add \
  @astrojs/language-server \
  @tailwindcss/language-server \
  typescript \
  typescript-language-server \
  vscode-langservers-extracted --global
