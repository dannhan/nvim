-- require("obsidian").setup({
--   dir = "~/HaloGeis",
-- })

require('nvim-autopairs').setup()

require("shade").setup()
require("shade").toggle()

require('Comment').setup({
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
})

local hop = require('hop')
local directions = require('hop.hint').HintDirection
vim.keymap.set('', 'F', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR })
end, {remap=true})
hop.setup()

