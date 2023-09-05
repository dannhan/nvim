return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = { "TroubleToggle", "Trouble" },
	keys = {
		{"<C-M>", "<cmd>TroubleToggle document_diagnostics<cr>"},
	},
}
