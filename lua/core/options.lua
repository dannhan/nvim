local opts = {
	number = true,
	relativenumber = true,
	shiftwidth = 2,
	softtabstop = 2,
	tabstop = 2,
	updatetime = 750,
	smartindent = true,
	expandtab = true,
	wrap = false,
	swapfile = false,
	backup = false,
	undofile = true,
	termguicolors = true,
	scrolloff = 8,
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end
