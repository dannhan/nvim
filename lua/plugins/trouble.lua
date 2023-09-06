return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("trouble").setup({
      mode = "document_diagnostics",
      action_keys = {
        close = {"q", "m"},
      },
      auto_close = true,
    })
  end,
  cmd = { "TroubleToggle", "Trouble" },
	keys = {
		{"<C-M>", "<cmd>TroubleToggle document_diagnostics<cr>"},
	},
}
-- Border
-- "none", "single", "double", "rounded", "solid", "shadow"
