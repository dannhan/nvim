require("toggleterm").setup({
  open_mapping = [[<c-p>]],
  terminal_mappings = true,
  insert_mappings = false,
  close_on_exit = true,
  direction = 'float',
})

-- vim.keymap.set("n", "<C-t>", vim.cmd.ToggleTerm)
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', 'jk', [[<C-l><C-n>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
