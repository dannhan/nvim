-- Miscelaneous fun stuff
return {
  {
    "github/copilot.vim",
    lazy = false,
    -- cmd = "Copilot",
    -- event = "VeryLazy",
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
  "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
  "nvim-lua/plenary.nvim",
}
