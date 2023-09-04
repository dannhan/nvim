-- Highlight, edit, and navigate code
return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"windwp/nvim-ts-autotag",
		"JoosepAlviste/nvim-ts-context-commentstring",
	},
	config = function()
		require('nvim-treesitter.configs').setup {
			-- A list of parser names, or "all" (the five listed parsers should always be installed)
			ensure_installed = {
				'astro', 'c', 'css', 'glimmer', 'graphql', 'html', 'javascript',
				'lua', 'nix', 'markdown', 'php', 'python', 'scss', 'svelte', 'tsx',
				'twig', 'typescript', 'vim', 'vimdoc', 'vue', 'query',
			},

			context_commentstring = {
				enable = true,
				enable_autocmd = false,
			},

			ignore_install = { },

			-- Install parsers synchronously (only applied to `ensure_installed`)
			sync_install = false,

			-- Automatically install missing parsers when entering buffer
			-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
			auto_install = true,

			autotag = {
				enable=true;
				enable_close_on_slash=false;
			},

			indent = {
				enable = true,
				disable = { 'python', 'c'} -- these and some other langs don't work well
			},

			highlight = {
				enable = true,

				-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
				-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
				-- Using this option may slow down your editor, and you may see some duplicate highlights.
				-- Instead of true it can also be a list of languages
				additional_vim_regex_highlighting = false,
			},

			modules = {}

		}
	end
}
