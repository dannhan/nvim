return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("fzf-lua").setup()
		-- require("helpers.keys").map("n", "<leader>pf", "<cmd>Oil<cr>")
		vim.keymap.set("n", "<leader>pf", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
		vim.keymap.set("n", "<leader>ps", "<cmd>lua require('fzf-lua').grep()<CR>", { silent = true })
		vim.keymap.set("n", "<leader>pc", "<cmd>lua require('fzf-lua').files({ cwd = '~/.config/nvim/'})<CR>", { silent = true })
	end
}
