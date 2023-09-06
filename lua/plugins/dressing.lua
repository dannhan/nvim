return {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("dressing").setup({
      select = {
        backend = { "builtin", "fzf_lua", "telescope" },
        builtin = {
          win_options = { winblend = 25 },
          width = 100,
        }
      }
    })
  end,
}
