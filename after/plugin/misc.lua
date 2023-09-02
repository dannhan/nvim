-- require("obsidian").setup({
--   dir = "~/HaloGeis",
-- })

-- require('nvim-autopairs').setup()

-- require('auto-pairs')
require('Comment').setup()

local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR })
end, {remap=true})
hop.setup()

