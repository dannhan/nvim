return {
	"VonHeikemen/lsp-zero.nvim",
	branch = 'v2.x',
	dependencies = {
		"neovim/nvim-lspconfig",             -- Required
		"williamboman/mason.nvim",           -- Optional
		"williamboman/mason-lspconfig.nvim", -- Optional

		-- Autocompletion
		"hrsh7th/nvim-cmp",     -- Required
		"hrsh7th/cmp-nvim-lsp", -- Required
		"L3MON4D3/LuaSnip",     -- Required
	},
	config = function()
		local lsp = require('lsp-zero').preset({})
		lsp.on_attach(function(client, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp.default_keymaps({buffer = bufnr})
		end)
		lsp.set_sign_icons({
			error = "",
			warning = "",
			hint = "",
			information = "",
			other = "",
		})
		lsp.setup()

		vim.diagnostic.config({
			virtual_text = false,
			update_in_insert = true,
		})
	end,
}
