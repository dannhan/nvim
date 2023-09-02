vim.keymap.set("n", "<Tab>", function()
  local next = vim.fn.winnr() + 1
  if vim.fn.winnr('$') == 1 then
    vim.cmd('vsplit')
    vim.cmd(""..next.." wincmd w")

  elseif next <= vim.fn.winnr('$') then
    vim.cmd(""..next.." wincmd w")

  else
    next = 1
    vim.cmd("1 wincmd w")

  end
end)

vim.keymap.set("n", "<S-Tab>", vim.cmd.split)

vim.keymap.set("n", "<C-w>", vim.cmd.quit)

vim.g.mapleader = " "

vim.keymap.set("n", "<C-s>", vim.cmd.write)

vim.keymap.set("n", "<leader>e", vim.cmd.Oil)

vim.keymap.set("n", "<C-z>", vim.cmd.redo)

vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("i", "kj", "<Esc>")

vim.cmd([[
  vnoremap  <leader>y  "+y
  nnoremap  <leader>Y  "+yg_
  nnoremap  <leader>y  "+y
  nnoremap  <leader>yy  "+yy
]])
