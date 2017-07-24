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

" Tab settings
" " Convert tabs to spaces (use ^V<Tab> to avoid the conversion)
set expandtab
" " Display tabs as 4 columns-long
set tabstop=4
" " Convert tabs to 4 spaces (thanks to expandtab)
set softtabstop=4
" " Reindent operations are 4 spaces-long
set shiftwidth=4
" " Do not replace tabs in Makefiles
autocmd FileType make setlocal noexpandtab

" Keybindings
" " Remap arrow keys to split navigation
noremap <Left> :wincmd h<CR>
noremap <Down> :wincmd j<CR>
noremap <Up> :wincmd k<CR>
noremap <Right> :wincmd l<CR>

" Source Plugins
source $XDG_CONFIG_HOME/nvim/plugins.vim

" Give deoplete an hint to start
let g:deoplete#enable_at_startup = 1

" pangloss/vim-javascript configuration
" " Highlight JSDOC
let g:javascript_plugin_jsdoc = 1
" " Highlight flow annotations
let g:javascript_plugin_flow = 1

" Airline configuration
source $XDG_CONFIG_HOME/nvim/airline.vim

" Highlight trailing whitespaces
autocmd BufWinEnter * let w:m3=matchadd('Space', '\s\+$\| \+\ze\t', -1)
highlight Space ctermbg=darkblue
set list listchars=tab:»·,trail:·
