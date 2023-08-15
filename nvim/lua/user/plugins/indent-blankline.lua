 local hl_list = {}
  for i, color in pairs({ '#101d08', '#2a1930', '#0e2d30','#303932', '#181010' }) do
    local name = 'IndentBlanklineIndent' .. i
    vim.api.nvim_set_hl(0, name, { fg = color })
    table.insert(hl_list, name);
  end
require('indent_blankline').setup({
  char_highlight_list = hl_list,
  filetype_exclude = {
    'help',
    'terminal',
    'dashboard',
    'packer',
    'lspinfo',
    'TelescopePrompt',
    'TelescopeResults',
  },
  buftype_exclude = {
    'terminal',
      'NvimTree',
  },
})
