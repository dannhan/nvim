require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
    'astro', 'c', 'css', 'glimmer', 'graphql', 'html', 'javascript',
    'lua', 'nix', 'php', 'python', 'scss', 'svelte', 'tsx', 'twig',
    'typescript', 'vim', 'vimdoc', 'vue', 'query',
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  autotag = {
    enable=true;
    enable_close_on_slash=true;
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  indent = {
    enable = true,
    disable = { 'python', 'c'} -- these and some other langs don't work well
  },

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}

