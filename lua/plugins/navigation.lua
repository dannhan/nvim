return {
	{
		'stevearc/oil.nvim',
		lazy = false,
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
		config = function()
			require("fzf-lua").setup()
			vim.keymap.set("n", "<leader>pf", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
			vim.keymap.set("n", "<leader>ps", "<cmd>lua require('fzf-lua').grep()<CR>", { silent = true })
			vim.keymap.set("n", "<leader>pc", "<cmd>lua require('fzf-lua').files({ cwd = '~/.config/nvim/'})<CR>", { silent = true })
		end
	}
}
