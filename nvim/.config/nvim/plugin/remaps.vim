" Keybindings
" " Remap arrow keys to split navigation
noremap <Left> :wincmd h<CR>
noremap <Down> :wincmd j<CR>
noremap <Up> :wincmd k<CR>
noremap <Right> :wincmd l<CR>
" " LSP navigation
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> Gd <cmd>vsplit<CR><cmd>lua vim.lsp.buf.definition()<CR>
