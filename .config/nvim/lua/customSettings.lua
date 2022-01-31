-- Treesitter setup configuration
local configs = require'nvim-treesitter.configs'
configs.setup {
  ensure_installed = 'maintained', --Only use parsers that are maintaind
  highlight = { -- enable highlighting
    enable = true,
  },
  indent = {
    enabled = true,
  }
}
