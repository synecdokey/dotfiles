#!/usr/bin/env sh

brew install --cask \
  neovide \
  numi

cargo install --git https://github.com/synecdokey/starship

# LSP-related tooling
pnpm add \
  @astrojs/language-server \
  @tailwindcss/language-server \
  typescript \
  typescript-language-server \
  vscode-langservers-extracted --global
