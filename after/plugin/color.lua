-- kanagawa as a backup, `recall()` can return `nil`.
local theme = require('last-color').recall() or 'kanagawa'
vim.cmd(('colorscheme %s'):format(theme))
