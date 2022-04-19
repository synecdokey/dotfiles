require('harpoon').setup()

vim.keymap.set('n', '<leader>hh', require('harpoon.mark').add_file)
vim.keymap.set('n', '<leader>he', function()
  require('harpoon.ui').nav_file(1)
end)
vim.keymap.set('n', '<leader>hp', require('harpoon.ui').toggle_quick_menu)
