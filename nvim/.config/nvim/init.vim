" Global settings
" " Keep things improved (noop in neovim)
set nocompatible
" " Display line numbers
set number
" " Syntax highlighting (on by default in neovim)
syntax on
" " Show matching brackets
set showmatch
" " Mode is already shown in the statusbar, hide it
set noshowmode

" Search Settings
" " Move cursor while searching
set incsearch
" " Highlight search matches
set hlsearch

" True colours
if (has("termguicolors"))
 set termguicolors
endif

" Tab settings
" " Convert tabs to spaces (use ^V<Tab> to avoid the conversion)
set expandtab
" " Display tabs as 2 columns-long
set tabstop=2
" " Convert tabs to 2 spaces (thanks to expandtab)
set softtabstop=2
" " Reindent operations are 2 spaces-long
set shiftwidth=2
" " Do not replace tabs in Makefiles
autocmd FileType make setlocal noexpandtab

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

" Configure completion engine
source $XDG_CONFIG_HOME/nvim/coc.vim

" Set theme
" " Careful, this one needs a true colors enabled terminal!
colorscheme night-owl
