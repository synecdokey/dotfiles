require('lualine').setup {
  sections = {
    lualine_a = { {'mode', fmt = function(str) return str:sub(1,1) end } }
  },
  options = {
    component_separators = { },
    section_separators = { },
    icons_enabled = false,
    theme = 'nord'
  }
}
