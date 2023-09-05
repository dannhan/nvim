return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    config = function()
      require("oil").setup({
        keymaps = {
          ["g?"] = "actions.show_help",
          ["l"] = "actions.select",
          ["h"] = "actions.parent",
          ["zh"] = "actions.toggle_hidden",
          ["<C-p>"] = "actions.preview",
          ["<C-c>"] = "actions.close",
          ["<C-s>"] = "",
        },
      })
      vim.keymap.set("n", "<leader>e", "<cmd>Oil<cr>", { desc = "FileExplorer" })
    end,
  },
  {
    "ibhagwan/fzf-lua",
    -- event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require 'fzf-lua'.setup {
        finder = {
          separator = "",
        },
        winopts = {
          on_create = function()
            vim.keymap.set("t", "<Tab>", "<Down>", { silent = true, buffer = true })
            vim.keymap.set("t", "<S-Tab>", "<Up>", { silent = true, buffer = true })
          end,
        },
        keymap = {
          builtin = { ["<C-h>"] = "toggle-help" },
          fzf = {
            -- fzf '--bind=' options
            ["ctrl-u"] = "unix-line-discard",
            ["ctrl-a"] = "beginning-of-line",
            ["ctrl-e"] = "end-of-line",
            ["alt-a"]  = "toggle-all",
          },
        },
        git = {
          icons = {
            ["M"] = { icon = "*", color = "yellow" },
            ["D"] = { icon = "✗", color = "red" },
            ["A"] = { icon = "+", color = "green" },
            ["R"] = { icon = "➜", color = "yellow" },
            ["C"] = { icon = ">", color = "yellow" },
            ["T"] = { icon = "➜", color = "magenta" },
            ["?"] = { icon = "?", color = "magenta" },
          },
        },
      }
    end,
    keys = {
      { "<leader>pf", "<cmd>FzfLua files<CR>",                    mode = "n", desc = "files" },
      { "<leader>pn", "<cmd>FzfLua files cwd=~/.config/nvim<CR>", mode = "n", desc = "nvim" },
      { "<leader>ps", "<cmd>FzfLua live_grep<CR>",                mode = "n", desc = "live grep" },
      { "<leader>pb", "<cmd>FzfLua buffers<CR>",                  mode = "n", desc = "buffers"},
      { "<leader>pt", "<cmd>FzfLua colorschemes<CR>",             mode = "n", desc = "colorschemes"},
    },
  }
}
