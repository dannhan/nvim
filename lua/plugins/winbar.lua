return {
  {
    "utilyre/barbecue.nvim",
    lazy = false,
    name = "barbecue",
    dependencies = {
      "SmiteshP/nvim-navic",
    },
    config = function()
      require("barbecue").setup()
    end,
  },
}
