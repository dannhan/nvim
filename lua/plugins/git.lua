-- Git related plugins
return {
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    opts = {},
  },
  {
    "akinsho/git-conflict.nvim",
    lazy = false,
    commit = "2957f74",
    config = function()
      require("git-conflict").setup({
        default_mappings = {
          ours = "co",
          theirs = "ct",
          none = "c0",
          both = "cb",
          next = "cn",
          prev = "cp",
        },
        disable_diagnostics = false,
        highlights = {
          incoming = 'DiffAdd',
          current = 'DiffText',
        },
        debug = false,
      })
    end,
  },
  {
    "tpope/vim-fugitive",
    cmd = {"Git"},
    config = function ()
      local map = require("helpers.keys").map
      map("n", "<leader>ga", "<cmd>Git add %<cr>", "Stage the current file")
      map("n", "<leader>gb", "<cmd>Git blame<cr>", "Show the blame")
    end
  }
}
