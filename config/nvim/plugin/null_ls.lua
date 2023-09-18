if not vim.g.vscode then
  local null_ls = require('null-ls')

  null_ls.setup({
    sources = {
      null_ls.builtins.formatting.prettier.with({
        prefer_local = 'node_modules/.bin',
        extra_filetypes = { 'astro' },
      }),
      require('null-ls').builtins.formatting.stylua,
    },
    on_attach = function(client, bufnr)
      if client.supports_method('textDocument/formatting') then
        local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
        vim.api.nvim_create_autocmd('BufWritePre', {
          buffer = bufnr,
          group = augroup,
          callback = function()
            vim.lsp.buf.format({
              filter = function(client)
                return client.name == 'null-ls'
              end,
              bufnr = bufnr,
            })
          end,
        })
      end
    end,
  })
end
