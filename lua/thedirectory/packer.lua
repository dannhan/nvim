-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'nvim-lua/plenary.nvim'}

  -- Copilot
  use {'github/copilot.vim'}

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/playground'}

  -- Color
  use {'raddari/last-color.nvim' }
  use {'AlexvZyl/nordic.nvim'}
  use {'rebelot/kanagawa.nvim'}
  use {'ellisonleao/gruvbox.nvim'}
  use {'rose-pine/neovim', as = 'rose-pine'}
  use {'Shatur/neovim-ayu'}
  use {'mhartington/oceanic-next'}
  use {'tanvirtin/monokai.nvim'}
  use {'m4xshen/catppuccinight.nvim'}
  use {'folke/tokyonight.nvim'}
  use {'sunjon/shade.nvim'}

 -- General
  use {'ThePrimeagen/harpoon'}                    -- Harpoon
  use {'windwp/windline.nvim'}                    -- Status Line
  use {'stevearc/oil.nvim'}                       -- Oil File Explorer 
  use {"epwalsh/obsidian.nvim"}                   -- Obsidian
  use {'akinsho/toggleterm.nvim', tag = '*'}      -- Terminal
  use {'lukas-reineke/indent-blankline.nvim'}     -- Indentantion Line
  use {'nvim-tree/nvim-web-devicons'}             -- Icons
  use {'karb94/neoscroll.nvim'}                   -- Neoscroll
  use {'windwp/nvim-autopairs'}                   -- Bracketspair
  use {'numToStr/Comment.nvim'}                   -- Comment
  use {'phaazon/hop.nvim'}                        -- Hop
  use {'justinmk/vim-sneak'}                      -- Sneak
  use {'vuki656/package-info.nvim'}               -- Package-info (Don't know what is this)
  use {'windwp/nvim-ts-autotag'}                  -- JSX autotags
  use {'JoosepAlviste/nvim-ts-context-commentstring'}

  use({
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
    },
    after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup()
    end,
  })

  use {
    'akinsho/bufferline.nvim',
    requires = 'echasnovski/mini.bufremove'
  } 

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
  }

  use { 
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = { "markdown" }
  }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},                -- Required
      {'williamboman/mason.nvim'},              -- Optional
      {'williamboman/mason-lspconfig.nvim'},    -- Optional

      -- Autocompletion   
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-cmdline'},
      {'saadparwaiz1/cmp_luasnip'},
      { 'L3MON4D3/LuaSnip', dependencies = 'rafamadriz/friendly-snippets' },
      {
        "pmizio/typescript-tools.nvim",
        event = { "BufReadPre", "BufNewFile" },
        ft = { "typescript", "typescriptreact" },
      },
      {
        "dmmulroy/tsc.nvim",
        cmd = { "TSC" },
        config = true,
      },
    }
  }

end,
config = {
  display = {
    open_fn = require('packer.util').float,
  }
}});
