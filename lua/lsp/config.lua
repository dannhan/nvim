---------------------------------- LSP
require('mason').setup({ ui = { border = "rounded", width = 0.50, height = 0.75 } })

local lsp = require('lsp-zero').preset({})
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.set_sign_icons({
  error = "",
  warn = "",
  hint = "",
  information = "",
  other = "",
})
lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  update_in_insert = false,
})

---------------------------------- CMP
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    }),
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  }),

  formatting = {
    fields = {'abbr', 'menu', 'kind'},
    format = function(entry, vim_item)
      local item_with_kind = require("lspkind").cmp_format({
        mode = "symbol_text",
        maxwidth = 50,
        ellipsis_char = '...',
      })(entry, vim_item)

      item_with_kind.menu = ({
        nvim_lsp = "[LSP]",
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
      })[entry.source.name]

      return item_with_kind
    end,
  },

  sources = {
    { name = "nvim_lsp", priority = 9 },
    { name = "luasnip",  priority = 7 },
    { name = "buffer",   priority = 6 },
    { name = "path",     priority = 6},
  },
})
