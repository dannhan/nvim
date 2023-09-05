-- See current buffers at the top of the editor
return {
	{
		"akinsho/bufferline.nvim",
    event = "VeryLazy",
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
    event = "VeryLazy",
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          component_separators = "|",
        },
      })
    end,
  }
}
