return {
	"lukas-reineke/indent-blankline.nvim",
	config = function()
		vim.opt.list = true

		require("indent_blankline").setup {
			show_end_of_line = false,
			-- space_char_blankline = " ",
		}
	end,
}
