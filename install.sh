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
  stow \
  yarn

# 0.5 still doesn't have an official release
brew install neovim --HEAD

brew install --cask \
  kitty \
  vimr

# Install a package manager for neovim
git clone https://github.com/savq/paq-nvim.git \
  "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/opt/paq-nvim
