call plug#begin('~/.config/nvim/plugins')

" Code completion & navigation
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Git plugins
" " Handles hunks and display diffs
Plug 'airblade/vim-gitgutter'
" " Add a lot of git commands inside vim
Plug 'tpope/vim-fugitive'

" Change surrounding brackets/parentheses/etc. easily
Plug 'tpope/vim-surround'

" Better syntax highlighting
" " Ansible
Plug 'pearofducks/ansible-vim'
" " TOML
Plug 'cespare/vim-toml', { 'for': 'toml' }
" " Typescript
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
" " Vue components
Plug 'posva/vim-vue'

" Rust plugins
" " Syntax Highlighting
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" " Code completion & navigation
Plug 'racer-rust/vim-racer', { 'for': 'rust' }
Plug 'sebastianmarkow/deoplete-rust', { 'for': 'rust' }

" Airline - better status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
