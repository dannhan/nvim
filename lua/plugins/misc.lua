-- Miscelaneous fun stuff
return {
  -- Comment with haste
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
    "windwp/nvim-autopairs",
    lazy = false,
    config = function()
      require("nvim-autopairs").setup()
    end,
  },
  -- Better buffer closing actions. Available via the buffers helper.
  {
    "kazhala/close-buffers.nvim",
    opts = {
      preserve_window_layout = { "this", "nameless" },
    },
  },
  {
    "ggandor/lightspeed.nvim",
    event = "VeryLazy",
    config = function()
      require("lightspeed").setup({})
    end,
  },
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
  "tpope/vim-surround", -- Surround stuff with the ys-, cs-, ds- commands
  "nvim-lua/plenary.nvim",
}
