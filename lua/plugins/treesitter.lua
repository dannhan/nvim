-- Highlight, edit, and navigate code
return {
  "nvim-treesitter/nvim-treesitter",
  event = "VeryLazy",
  dependencies = {
    "windwp/nvim-ts-autotag",
    "JoosepAlviste/nvim-ts-context-commentstring",
    "hiphish/rainbow-delimiters.nvim",
  },
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'astro', 'c', 'css', 'glimmer', 'graphql', 'html', 'javascript',
        'lua', 'nix', 'markdown', 'php', 'python', 'scss', 'svelte', 'tsx',
        'twig', 'typescript', 'vim', 'vimdoc', 'vue', 'query',
      },
      sync_install = false,
      ignore_install = { },
      highlight = { enable = true },
      indent = { enable = true, },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
      auto_install = true,

      autotag = {
        enable=true;
        enable_close_on_slash=false;
      },
      modules = {}
    }
    -- Rainbow Delimiters
    local rainbow_delimiters = require 'rainbow-delimiters'
    vim.g.rainbow_delimiters = {
      strategy = {
        -- [''] = rainbow_delimiters.strategy['local'],
        [''] = rainbow_delimiters.strategy['global'],
      },
      query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
        tsx = 'rainbow-parens',
        -- javascript = 'rainbow-parens',
      },
      highlight = {
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterViolet',
        'RainbowDelimiterGreen',
        'RainbowDelimiterCyan',
        -- 'RainbowDelimiterRed',
      },
    }
  end
}
