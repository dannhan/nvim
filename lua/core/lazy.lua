-- Install lazy.nvim if not already installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local ok, lazy = pcall(require, "lazy")
if not ok then
  return
end

-- We have to set the leader key here for lazy.nvim to work
vim.g.mapleader = " "


-- Load plugins from specifications
-- (The leader key must be set before this)
lazy.setup("plugins", {
  defaults = { lazy = true, },
  install = { colorscheme = {"ayu"} },
  change_detection = { notify = false },
  performance = {
    rtp = {
      disable_plugins = {
        "gzip",
        "netrwPlugin",
        "terPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      }
    },
  },
  debug = false,
  ui = { border =  "rounded" }
})

-- Might as well set up an easy-access keybinding

vim.keymap.set("n", "<leader>l", lazy.show)
