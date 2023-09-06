return {
  "akinsho/toggleterm.nvim",
  -- event = "VeryLazy",
  cmd = { "TroubleToggle", "Trouble" },
  keys = {
    { "<c-p>", "<cmd>ToggleTerm<CR>", mode = "n" }
  },
  config = function()
    require("toggleterm").setup {
      -- size can be a number or function which is passed the current terminal
      open_mapping = [[<c-p>]],
      shade_terminals = true,
      shading_factor = 1,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = false,
      direction = 'float',
      close_on_exit = true,
      float_opts = {
        border = 'curved', -- single/double/shadow/curved
        winblend = 10,
      },
      winbar = {
        enabled = true,
      },
    }
  end,
}
