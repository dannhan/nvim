require("toggleterm").setup {
  -- size can be a number or function which is passed the current terminal
  open_mapping = [[<c-p>]],
  ---@diagnostic disable-next-line: unused-local
  on_open = function(term)
    vim.cmd(":silent lua require'shade'.toggle()")
  end,
  ---@diagnostic disable-next-line: unused-local
  on_close = function(term)
    vim.cmd(":silent lua require'shade'.toggle()")
  end,
  highlights = {
    -- highlights which map to a highlight group name and a table of it's values
    -- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
    Normal = {
      link = 'Normal'
    },
    NormalFloat = {
      link = 'Normal'
    },
    FloatBorder = {
      link = 'FloatBorder'
    },
  },
  shade_filetypes = {},
  shade_terminals = false,
  shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
  start_in_insert = true,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  persist_size = true,
  direction = 'float', -- | 'horizontal' | 'window' | 'float',
  close_on_exit = true, -- close the terminal window when the process exits
  shell = vim.o.shell, -- change the default shell
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_win_open'
    -- see :h nvim_win_open for details on borders however
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved', -- single/double/shadow/curved
    winblend = 4,
  },
  winbar = {
    enabled = true,
  },
}

