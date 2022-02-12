-- Treesitter setup config
local configs = require'nvim-treesitter.configs'
configs.setup {
  ensure_installed = 'maintained', --Only use parsers that are maintained
  highlight = { -- enable highlighting
    enable = true,
  },
  indent = {
    enabled = true,
  },
}
