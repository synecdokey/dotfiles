return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  opts = {
    formatters_by_ft = {
      lua = { 'stylua' },
      nix = { 'alejandra' },
      javascript = { 'biome' },
      typescript = { 'biome' },
      javascriptreact = { 'biome' },
      typescriptreact = { 'biome' },
      json = { 'biome' },
      jsonc = { 'biome' },
      gleam = { 'gleam' },
    },
    format_on_save = { timeout_ms = 500 },
  },
}
