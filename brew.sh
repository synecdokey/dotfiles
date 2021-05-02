#!/usr/bin/env sh

brew install \
  fd \
  fish \
  fnm \
  fzf \
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
