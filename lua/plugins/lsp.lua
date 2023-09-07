return {
  {
    "VonHeikemen/lsp-zero.nvim",
    event = "VeryLazy",
    branch = 'v2.x',
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      -- "hrsh7th/nvim-cmp",
    },
    config = function()
      require("lsp.config")
    end,
  },
  {
    "pmizio/typescript-tools.nvim",
    ft = { "typescript", "typescriptreact" },
    config = function()
      require("typescript-tools").setup({})
    end,
  },
  -- { "dmmulroy/tsc.nvim", cmd = { "TSC" } },
}

--------------------------------------------
-- return {
--   "neovim/nvim-lspconfig",
--   lazy = false,
--   dependencies = {
--     "williamboman/mason.nvim",
--     "williamboman/mason-lspconfig.nvim",
--   },
--   config = function()
--     require('mason').setup({ ui = { border = "rounded", width = 0.50, height = 0.75 } })
--
--     local lspconfig = require('lspconfig')
--     require('mason-lspconfig').setup_handlers({
--       function(server_name)
--         lspconfig[server_name].setup{}
--       end
--     })
--
--     for type, icon in pairs({ Error = "", Warn = "", Hint = "", Info = "" }) do
--       local hl = "DiagnosticSign" .. type
--       vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
--     end
--     vim.diagnostic.config({ virtual_text = false, update_in_insert = true, })
--   end,
-- }

---------------------------------------------
