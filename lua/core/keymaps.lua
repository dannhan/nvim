vim.keymap.set("n", "<C-z>", vim.cmd.redo)

-- Blazingly fast way out of insert mode
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<C-x>", "<cmd>bdelete<cr>")

-- Quick access to some common actions
vim.keymap.set("n", "<C-s>", "<cmd>w<cr>")
vim.keymap.set("n", "<leader>fa", "<cmd>wa<cr>")
vim.keymap.set("n", "<leader>qq", "<cmd>q<cr>")
vim.keymap.set("n", "<leader>qa", "<cmd>qa!<cr>")
vim.keymap.set("n", "<leader>dw", "<cmd>close<cr>")

-- Diagnostic keymaps
vim.keymap.set('n', 'gx', vim.diagnostic.open_float)

-- Easier access to beginning and end of lines
vim.keymap.set("n", "<M-h>", "^")
vim.keymap.set("n", "<M-l>", "$")

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

-- Move with shift-arrows
vim.keymap.set("n", "<S-Left>", "<C-w><S-h>")
vim.keymap.set("n", "<S-Down>", "<C-w><S-j>")
vim.keymap.set("n", "<S-Up>", "<C-w><S-k>")
vim.keymap.set("n", "<S-Right>", "<C-w><S-l>")

-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize +2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize -2<CR>")

-- Navigate buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Switch between light and dark modes
vim.keymap.set("n", "<leader>ut", function()
	if vim.o.background == "dark" then
		vim.o.background = "light"
	else
		vim.o.background = "dark"
	end
end)

-- Clear after search
vim.keymap.set("n", "<leader>ur", "<cmd>nohl<cr>")
