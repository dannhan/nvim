return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup()
    end,
  },
  {
    "numToStr/Comment.nvim",
    event = "VeryLazy",
    opts = {},
    config = function()
      require('Comment').setup({
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      })
    end,
  },
  {
    "ggandor/lightspeed.nvim",
    event = "VeryLazy",
    config = function()
      require("lightspeed").setup({})
    end,
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },
  -- {
  --   "echasnovski/mini.surround",
  --   version = false,
  --   event = "VeryLazy",
  --   config = function()
  --     require("mini.surround").setup({
  --       mappings = {
  --         add = 'ys', -- Add surrounding in Normal and Visual modes
  --         delete = 'ds', -- Delete surrounding
  --         -- find = 'ysf', -- Find surrounding (to the right)
  --         -- find_left = 'ysF', -- Find surrounding (to the left)
  --         highlight = 'ysh', -- Highlight surrounding
  --         replace = 'cs', -- Replace surrounding
  --         update_n_lines = 'ysn', -- Update `n_lines`
  --
  --         suffix_last = 'l', -- Suffix to search with "prev" method
  --         suffix_next = 'n', -- Suffix to search with "next" method
  --       },
  --     })
  --   end,
  -- },
}
