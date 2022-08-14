local null_ls = require('null-ls')

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      prefer_local = 'node_modules/.bin',
    }),
    require('null-ls').builtins.formatting.stylua,
  },
  on_attach = function(client, bufnr)
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            filter = function(clients)
              return vim.tbl_filter(function(client)
                return client.name ~= 'tsserver'
              end, clients)
            end,
            bufnr = bufnr,
          })
        end,
      })
    end
  end,
})
