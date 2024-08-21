return {
  'nvim-lualine/lualine.nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-web-devicons' },
  cond = not vim.g.vscode,
  opts = {
    sections = {
      lualine_a = {
        {
          'mode',
          fmt = function()
            return ' '
          end,
          padding = 0,
        },
      },
      lualine_b = {
        'branch',
        {
          'diagnostics',
          symbols = {
            error = ' ',
            warn = ' ',
            info = ' ',
            hint = ' ',
          },
        },
      },
      lualine_c = {
        {
          'filename',
          path = 1,
          symbols = { modified = '', readonly = '' },
        },
      },
      lualine_x = {
        {
          function()
            local msg = ''
            local buf_ft = vim.api.nvim_buf_get_option(0, 'filetype')
            local clients = vim.lsp.get_clients()
            if next(clients) == nil then
              return msg
            end
            for _, client in ipairs(clients) do
              local filetypes = client.config.filetypes
              if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                msg = msg .. ' ' .. client.name
              end
            end
            return msg
          end,
          color = { fg = '#ffffff', gui = 'bold' },
        },
      },
      lualine_y = { 'location' },
      lualine_z = { { 'filetype', colored = true, icon_only = true } },
    },
    options = {
      icons_enabled = false,
      component_separators = {},
      section_separators = {},
      theme = 'terafox',
    },
  },
}
