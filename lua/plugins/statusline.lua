-- See current buffers at the top of the editor
return {
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("bufferline").setup({
				options = {
					diagnostics = "nvim_lsp",
					diagnostics_upadte_in_insert = true,
					separator_style = "thin",
					custom_filter = function(buf_number)
						if vim.bo[buf_number].filetype ~= "qf" then
							return true
						end
						if vim.bo[buf_number].filetype ~= 'oil' then
							return true
						end
					end,
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							highlight = "EcovimNvimTreeTitle",
							text_align = "center",
							separator = true,
						},
					},
				}
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		-- https://github.com/windwp/windline.nvim
		config = function()
			local colorscheme = require("helpers.colorscheme")
			local lualine_theme = colorscheme == "default" and "auto" or colorscheme
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = lualine_theme,
					component_separators = "|",
					section_separators = "",
				},
			})
		end,
	}
}
