return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup {
			-- size can be a number or function which is passed the current terminal
			open_mapping = [[<c-p>]],
			shade_filetypes = {},
			shade_terminals = false,
			shading_factor = 1,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = 'float',
			close_on_exit = true,
			float_opts = {
				border = 'curved', -- single/double/shadow/curved
				winblend = 4,
			},
			winbar = {
				enabled = true,
			},
		}
	end,
}
