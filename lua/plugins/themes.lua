local color = function(name)
  return { name, lazy = false}
end

return {
  color("ellisonleao/gruvbox.nvim"),
  color("Shatur/neovim-ayu"),
  color("typicode/bg.nvim"),
  color("ellisonleao/gruvbox.nvim"),
  color("sainnhe/gruvbox-material"),
  color("sainnhe/everforest"),
  color("savq/melange-nvim"),
  { "rose-pine/nvim",  name = "rose-pine", lazy = false },
  { "catppuccin/nvim", name = "catppuccin", lazy = false },
  {
    "raddari/last-color.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local colorscheme = require('last-color').recall() or 'catppuccin' or 'habamax'
      vim.cmd.colorscheme(colorscheme);
    end,
  },
}
