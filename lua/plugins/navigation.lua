return {
	{
		'stevearc/oil.nvim',
		config = function()
			require("oil").setup({
				keymaps = {
					["g?"] = "actions.show_help",
					["l"] = "actions.select",
					["h"] = "actions.parent",
					["zh"] = "actions.toggle_hidden",
					["<C-p>"] = "actions.preview",
					["<C-c>"] = "actions.close",
				},
			})
			require("helpers.keys").map("n", "<leader>e", "<cmd>Oil<cr>")
		end,
	},
	{
		"ibhagwan/fzf-lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		lazy = true,
		keys = {
			{ "<leader>pf", "<cmd>lua require('fzf-lua').files()<CR>", mode = "n", },
			{ "<leader>ps", "<cmd>lua require('fzf-lua').grep()<CR>", mode = "n", },
			{ "<leader>pc", "<cmd>lua require('fzf-lua').files({ cwd = '~/.config/nvim/'})<CR>", mode = "n", },
		},
	}
}
