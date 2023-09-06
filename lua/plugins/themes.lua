local color = function(name)
  return { name, cmd = { "LastColor" }}
end

return {
  color("ellisonleao/gruvbox.nvim"),
  color("Shatur/neovim-ayu"),
  color("typicode/bg.nvim"),
  color("ellisonleao/gruvbox.nvim"),
  color("sainnhe/gruvbox-material"),
  color("sainnhe/everforest"),
  color("savq/melange-nvim"),
  { "rose-pine/nvim",  name = "rose-pine", cmd = { "LastColor" } },
  { "catppuccin/nvim", name = "catppuccin", cmd = { "LastColor" } },
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
