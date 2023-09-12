-- Miscelaneous fun stuff
return {
  {
    "windwp/nvim-autopairs",
    event = "VeryLazy",
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
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        render = "compact",
        timeout = 2000
      })
    end,
  },
  {
    "kazhala/close-buffers.nvim",
    opts = {
      preserve_window_layout = { "this", "nameless" },
    },
  },
  {
    "github/copilot.vim",
    lazy = false,
    -- cmd = "Copilot",
    -- event = "VeryLazy",
  },
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end,
  },
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
  "tpope/vim-surround", -- Surround stuff with the ys-, cs-, ds- commands
  "nvim-lua/plenary.nvim",
}
