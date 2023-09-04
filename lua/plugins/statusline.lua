-- See current buffers at the top of the editor
return {
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					mode = "buffers",
					style_preset = bufferline.style_preset.no_italic,
					separator_style = "thick",
					diagnostics = "nvim_lsp",
					diagnostics_update_in_insert = true,
					offsets = {
						{ filetype = "NvimTree", text = "File Explorer", text_align = "center", separator = true, },
					},
					custom_filter = function(buf_number)
						if vim.bo[buf_number].filetype ~= "qf" then
							return true
						end
						if vim.bo[buf_number].filetype ~= "oil" then
							return true
						end
					end,
				}
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		-- https://github.com/windwp/windline.nvim
		config = function()
			local colorscheme = require("helpers.colorscheme")
			if colorscheme == "ayu-dark" then
				colorscheme = "ayu"
			end
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
