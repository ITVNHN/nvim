local opt = vim.opt -- for conciseness
local options = {
	"autoindent",
	"incsearch",
	"smartindent",
	"expandtab",
	"smarttab",
	"breakindent",
	"shiftwidth=2",
	"tabstop=2",
	"wrap",
	"autoread",
	"autowrite",
	"cursorline",
	"noshowcmd",
	"cmdheight=0",
	"backspace=start,eol,indent",
	"shiftround",
	"nobackup",
	"ignorecase",
	"signcolumn=yes",
	"linebreak",
	"number relativenumber",
	"clipboard+=unnamedplus",
	"laststatus=3",
	"termguicolors",
	"scrolloff=5",
	"title",
	"pumheight=10",
	"noswapfile",
	"noshowmode",
	"nowritebackup",
	"noruler",
	"foldexpr=nvim_treesitter#foldexpr()",
	"foldmethod=expr",
	"nofoldenable",
	"fillchars+=eob:\\ ",
	-- "undofile",
}

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one
opt.cindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- completion
vim.opt.completeopt = "menu,menuone,preview,noinsert"

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- word
opt.iskeyword:append({ "-" })

-- line wrapping
-- vim.wo.wrap = true
vim.wo.wrap = false
-- vim.wo.linebreak = true
-- vim.wo.breakindent = true

if vim.b.win_separator then
	options = vim.list_extend(options, {
		"fillchars+=horiz:\\━",
		"fillchars+=horizup:\\┻",
		"fillchars+=horizdown:\\┳",
		"fillchars+=vert:\\┃",
		"fillchars+=vertleft:\\┫",
		"fillchars+=vertright:\\┣",
		"fillchars+=verthoriz:\\╋",
	})
else
	options = vim.list_extend(options, {
		"fillchars+=horiz:\\ ",
		"fillchars+=horizup:\\ ",
		"fillchars+=horizdown:\\ ",
		"fillchars+=vert:\\ ",
		"fillchars+=vertleft:\\ ",
		"fillchars+=vertright:\\ ",
		"fillchars+=verthoriz:\\ ",
	})
end

-- fold
for i, option in pairs(options) do
	vim.cmd("set " .. option)
end

local M = {}
local myO = {
	transparent_background = false,
	mapleader = " ",
	border_color = "#cbc398",
	doc_border = true,
	win_separator = false,
	syn_all_border_color = false,
	syn_all_telescope_border = false,
	float_window_brightness = 50,
	better_cmp_cursor_line = true,
	colorscheme = "catppuccin",
}

vim.g.mapleader = " "
vim.b.win_separator = true
vim.b.border_color = "#ffffff"
vim.b.transparent_background = false
vim.b.syn_all_border_color = false
vim.b.syn_all_telescope_border = false
vim.b.float_window_brightness = 0
vim.b.doc_border = false
vim.b.better_cmp_cursor_line = false
vim.b.colorscheme = ""

vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
return M
