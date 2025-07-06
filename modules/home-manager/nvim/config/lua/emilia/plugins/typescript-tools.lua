local on_attach = function(client, bufnr)
  local opts = { buffer = bufnr }

  -- Mappings
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
  -- Diagnostics
  vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, opts)
  vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, opts)
  vim.keymap.set('n', '<leader>dl', '<cmd>Telescope diagnostics<cr>', opts)
  -- Global renames
  vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts)
  -- Code actions
  -- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_actions, opts)
end

return {
  'pmizio/typescript-tools.nvim',
  enabled = false,
  ft = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  dependencies = { 'plenary.nvim', 'nvim-lspconfig' },
  opts = {
    on_attach = on_attach,
    jsx_close_tag = {
      enable = true,
    },
  },
}
