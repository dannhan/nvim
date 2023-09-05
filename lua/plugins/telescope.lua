return {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  cmd = {"Telescope"},
  -- keys = {
  --   {"<leader>pf", "<cmd>Telescope find_files<CR>"},
  --   {"<leader>ps", "<cmd>Telescope live_grep<CR>"},
  --   {"<leader>pc", "<cmd>Telescope find_files search_dirs=~/.config/nvim<CR>"},
  -- },
  -- dependencies = { 'nvim-lua/plenary.nvim' },
  -- config = function()
  --   local actions = require('telescope.actions')
  --   require('telescope').setup{
  --     defaults = {
  --       mappings = {
  --         i = {
  --           -- ["<Tab>"]   = actions.move_selection_next,
  --           ["<S-Tab>"] = actions.move_selection_previous,
  --           ["<Esc>"]   = actions.close,
  --         },
  --       },
  --     },
  --     pickers = {
  --       find_files = { theme = "ivy" },
  --       live_grep =  { theme = "ivy" }
  --     },
  --     extensions = {},
  --   }
  -- end
}
