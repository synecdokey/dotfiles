#!/usr/bin/env sh

brew install \
  fd \
  fish \
  fnm \
  gh \
  git \
  git-lfs \
  jq \
  lazygit \
  luarocks \
  neovim \
  pgcli \
  pnpm \
  ripgrep \
  rust \
  stow \
  stylua

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
