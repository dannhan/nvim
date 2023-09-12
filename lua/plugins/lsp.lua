return {
  {
    "VonHeikemen/lsp-zero.nvim",
    lazy = false,
    branch = 'v2.x',
    dependencies = {
      "neovim/nvim-lspconfig",             -- Required
      "williamboman/mason.nvim",           -- Optional
      "williamboman/mason-lspconfig.nvim", -- Optional
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
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
        warn = "",
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
  },
  {
    "pmizio/typescript-tools.nvim",
    event = { "BufReadPre", "BufNewFile" },
    ft = { "typescript", "typescriptreact" },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("typescript-tools").setup {}
    end,
  },
  {
    "williamboman/mason.nvim",           -- Optional
    cmd = "Mason",
  },
  {
    "dmmulroy/tsc.nvim",
    cmd = { "TSC" },
    config = true,
  },
}
