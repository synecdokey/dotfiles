return {
  'theprimeagen/harpoon',
  dependencies = {
    'plenary.nvim',
  },
  config = true,
  keys = {
    {
      '<leader>hh',
      function()
        require('harpoon.mark').add_file()
      end,
      desc = 'Harpoon file',
    },
    {
      '<leader>he',
      function()
        require('harpoon.ui').nav_file(1)
      end,
      desc = 'Go to first harpooned file',
    },
    {
      '<leader>hp',
      function()
        require('harpoon.ui').toggle_quick_menu()
      end,
      desc = 'Harpoon menu',
    },
  },
}
