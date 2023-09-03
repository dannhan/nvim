local bufferline = require("bufferline")

bufferline.setup({
  options = {
    close_command = function(n)
      require("mini.bufremove").delete(n, false)
    end,
    right_mouse_command = function(n)
      require("mini.bufremove").delete(n, false)
    end,
    diagnostics = "nvim_lsp",
    diagnostics_upadte_in_insert = true,
    show_buffer_close_icons = false,
    separator_style = "thin",
    always_show_bufferline = true,
    style_preset = bufferline.style_preset.no_italic,
    custom_filter = function(buf_number)
      -- filter out filetypes you don't want to see
      if vim.bo[buf_number].filetype ~= "qf" then
        return true
      end
      if vim.bo[buf_number].filetype ~= 'oil' then
        return true
      end
    end,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        highlight = "EcovimNvimTreeTitle",
        text_align = "center",
        separator = true,
      },
    },
    numbers = function(number_opts)
      local harpoon = require("harpoon.mark")
      local buf_name = vim.api.nvim_buf_get_name(number_opts.id)
      local harpoon_mark = harpoon.get_index_of(buf_name)
      return harpoon_mark
    end,
  },
})
