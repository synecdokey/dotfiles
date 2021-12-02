#!/usr/bin/env sh

brew install \
  fd \
  fish \
  fnm \
  git \
  git-lfs \
  jq \
  luarocks \
  pgcli \
  pnpm \
  ripgrep \
  stow

# 0.5 still doesn't have an official release
brew install neovim --HEAD

brew install --cask \
  kitty \
  obsidian

# LSP-related tooling
pnpm add @tailwindcss/language-server typescript \
  typescript-language-server --global

# Install a package manager for neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/packer/start/packer.nvim
