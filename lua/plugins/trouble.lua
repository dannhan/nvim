return {
	"folke/trouble.nvim",
	lazy = true,
	dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = { "TroubleToggle", "Trouble" },
	keys = {
		{"<C-M>", "<cmd>TroubleToggle<cr>"},
	},
}
