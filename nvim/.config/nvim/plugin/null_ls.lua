require("null-ls").config({
  sources = { require("null-ls").builtins.formatting.prettier }
})
require("lspconfig")["null-ls"].setup({
  on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
    end
  end
})
