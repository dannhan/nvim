-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Copilot
  use {'github/copilot.vim'}

  -- Color
  use {'raddari/last-color.nvim' }
  use {'rebelot/kanagawa.nvim'}
  use {'ellisonleao/gruvbox.nvim'}
  use {'rose-pine/neovim', as = 'rose-pine'}
  use {'Shatur/neovim-ayu'}
  use {'mhartington/oceanic-next'}
  use {'tanvirtin/monokai.nvim'}
  use {'m4xshen/catppuccinight.nvim'}
  use {'folke/tokyonight.nvim'}

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/playground'}

  use {'ThePrimeagen/harpoon'}                    -- Harpoon
  use {'stevearc/oil.nvim'}                       -- Oil
  use {"epwalsh/obsidian.nvim"}                   -- Obsidian
  use {'akinsho/toggleterm.nvim', tag = '*'}      -- Terminal
  use {'lukas-reineke/indent-blankline.nvim'}     -- Indentline
  use {'nvim-tree/nvim-web-devicons'}             -- Icons
  use {'nvim-lualine/lualine.nvim'}               -- Lualine
  use {'karb94/neoscroll.nvim'}                   -- Neoscroll
  -- use {'windwp/nvim-autopairs'}                   -- Bracketspair
  use {'jiangmiao/auto-pairs'}
  use {'tpope/vim-surround'}
  use {'numToStr/Comment.nvim'}                   -- Comment
  use {'phaazon/hop.nvim'}                        -- Hop
  use {'justinmk/vim-sneak'}                      -- Sneak
  use {'vuki656/package-info.nvim'}               -- Package-info
  use {'windwp/nvim-ts-autotag'}

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use { "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = { "markdown" }
  }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},                -- Required
      {'williamboman/mason.nvim'},              -- Optional
      {'williamboman/mason-lspconfig.nvim'},    -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},                     -- Required
      {'hrsh7th/cmp-nvim-lsp'},                 -- Required
      {'L3MON4D3/LuaSnip'},                     -- Required
    }
  }
end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}});
