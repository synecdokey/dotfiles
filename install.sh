#!/usr/bin/env sh

brew install \
  fd \
  fish \
  fnm \
  git \
  git-lfs \
  jq \
  luarocks \
  neovim \
  pgcli \
  pnpm \
  ripgrep \
  stow

brew install --cask \
  kitty \
  numi \
  obsidian \
  raycast

# LSP-related tooling
pnpm add @tailwindcss/language-server typescript \
  typescript-language-server --global

# Install a package manager for neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/packer/start/packer.nvim
