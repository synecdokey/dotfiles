lua require('harpoon').setup()

nnoremap <leader>hh <cmd>:lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>he <cmd>:lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <leader>hp <cmd>:lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>ht <cmd>:lua require("harpoon.term").gotoTerminal(1)<cr>
nnoremap <leader>hk <cmd>:lua require("harpoon.term").gotoTerminal(2)<cr>
