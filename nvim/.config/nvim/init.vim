" Global settings
" " Keep things improved (noop in neovim)
set nocompatible
" " Don't wrap lines, let the long lines stand out in their horribleness
set nowrap
" " Display line numbers
set number
" " Relative numbers
set relativenumber
" " Syntax highlighting (on by default in neovim)
syntax on
" " Show matching brackets
set showmatch
" " Mode is already shown in the statusbar, hide it
set noshowmode
" " Enable mouse handling, for pairing situations
set mouse=a
" " Highlight the 80th character, to know if I need to start refactoring
set colorcolumn=80

" Search Settings
" " Move cursor while searching
set incsearch
" " Highlight search matches
set hlsearch

" True colours
if (has("termguicolors"))
 set termguicolors
endif

" Remove netrw's top banner
let g:netrw_banner = 0

" Tab settings
" " Convert tabs to spaces (use ^V<Tab> to avoid the conversion)
set expandtab
" " Display tabs as 2 columns-long
set tabstop=2
" " Convert tabs to 2 spaces (thanks to expandtab)
set softtabstop=2
" " Reindent operations are 2 spaces-long
set shiftwidth=2

" Keybindings
" " Remap arrow keys to split navigation
noremap <Left> :wincmd h<CR>
noremap <Down> :wincmd j<CR>
noremap <Up> :wincmd k<CR>
noremap <Right> :wincmd l<CR>

" Highlight trailing whitespaces
autocmd BufWinEnter * let w:m3=matchadd('Space', '\s\+$\| \+\ze\t', -1)
highlight Space ctermbg=darkblue
set list listchars=tab:»·,trail:·

" Source Plugins
source $XDG_CONFIG_HOME/nvim/plugins.vim

" Set theme
" " Careful, this one needs a true colors enabled terminal!
colorscheme spring-night

" Rust
" " Format on save
let g:rustfmt_autosave = 1
