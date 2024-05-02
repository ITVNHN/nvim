local M = {}

-- local opts = { noremap = true, silent = true }
vim.b.optNo = function(desc)
	return { desc = desc, noremap = false, nowait = true }
end
vim.b.optRe = function(desc)
	return { desc = desc, noremap = true, nowait = true }
end
local function opts(desc)
	return { desc = desc, noremap = true, nowait = true }
end

vim.keymap.set({ "i", "n" }, "<A-,>", ":BufferPrevious<CR>")
vim.keymap.set({ "i", "n" }, "<A-.>", ":BufferNext<CR>")
vim.keymap.set({ "i", "n" }, "<A-c>", ":BufferClose<CR>")
vim.keymap.set({ "i", "n" }, "<A-C>", ":BufferClose!<CR>")

-- vim.keymap.set("n", "f", "")
-- vim.keymap.set("n", "<C-/>", "gcc")
vim.keymap.set("n", "i;", "gcc")
vim.keymap.set("n", "i/", "gcc", { remap = true })
vim.keymap.set("n", "z/", "gcc", { remap = true })
-- vinsert
vim.keymap.set("!", ";;", "<ESC>", opts("esc"))
vim.keymap.set("!", ";:", ";")
vim.keymap.set("!", "; ", " ")
vim.keymap.set("!", ";b", "<C-w>")
vim.keymap.set("!", ";d", "<End><C-u>")
vim.keymap.set("!", ";h", "<Left>")
vim.keymap.set("!", ";H", "<Home>")
vim.keymap.set("!", ";j", "<Down>")
vim.keymap.set("!", ";k", "<Up>")
vim.keymap.set("!", ";l", "<Right>")
vim.keymap.set("!", ";L", "<End>")
vim.keymap.set("!", ";4", "<End>")
vim.keymap.set("!", ";6", "<Home>")
vim.keymap.set("!", ";p", "<C-@>")

vim.keymap.set("i", ";a", "<End>;<CR>")
vim.keymap.set("i", ";o", "<ESC>o")
vim.keymap.set("i", ";O", "<ESC>O")
vim.keymap.set("i", ";sh", "<ESC>sh")
vim.keymap.set("i", ";sj", "<ESC>sj")
vim.keymap.set("i", ";sk", "<ESC>sk")
vim.keymap.set("i", ";sl", "<ESC>sl")
vim.keymap.set("i", ";{", "<right> {}<Left><CR>")
vim.keymap.set("i", ";/", "<ESC>/")
vim.keymap.set("i", ";?", "<ESC>?")

-- vim.keymap.set("i", ";n", "(n)")
-- vim.keymap.set("i", ";v", "(v)")
-- vim.keymap.set("i", ";p", "(prep)")
-- vim.keymap.set("i", ";a", "(adj)")

-- vnormal
vim.keymap.set("n", "H", "<C-b>")

vim.keymap.set("n", "ii", "i")
vim.keymap.set("n", "ij", "vipJ")

vim.keymap.set("n", "L", "<C-f>")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", opts("Clear search highlights"))
vim.keymap.set("n", "<CR>", "o<ESC>")
vim.keymap.set("n", "<S-CR>", "O<ESC>")
vim.keymap.set("n", "[[", '?{<CR>w99[{")')
vim.keymap.set("n", "][", "/}<CR>b99]}")
vim.keymap.set("n", "]]", "j0[[%/{<CR>")
vim.keymap.set("n", "[]", "k$][%?}<CR>")

-- -- See `:help vim.diagnostic.*` for documentation on any of the below functions
-- vim.vim.keymap.set("n", "<space>d", "", opts("diagno"))
-- vim.vim.keymap.set("n", "<space>do", vim.diagnostic.open_float)
-- vim.vim.keymap.set("n", "<space>dp", vim.diagnostic.goto_prev)
-- vim.vim.keymap.set("n", "<space>dn", vim.diagnostic.goto_next)
-- vim.vim.keymap.set("n", "<space>ds", vim.diagnostic.setloclist)

vim.keymap.set("n", "p", "")
vim.keymap.set("n", "pa", "vaap")
vim.keymap.set("n", "pi", "viap")
vim.keymap.set("n", "pj", "ddp")
vim.keymap.set("n", "pp", "p")
vim.keymap.set("n", "pw", "viwp")
vim.keymap.set("n", "p9", "vi(p")
vim.keymap.set("n", "p[", "vi[p")
vim.keymap.set("n", "p'", 'vi"p')
vim.keymap.set("n", "p{", "vi{p")
vim.keymap.set("n", "p,", "vi<p")
vim.keymap.set("n", "p.", "vi>p")

vim.keymap.set("n", "r", "")
vim.keymap.set("n", "rr", "r", opts("rename"))
vim.keymap.set("n", "rn", vim.lsp.buf.rename, opts("Smart rename")) -- smart rename

vim.keymap.set("n", "s", "")
vim.keymap.set("n", "sh", "<C-w><left>", opts("window move")) -- split window vertically
vim.keymap.set("n", "sj", "<C-w><down>", opts("window move")) -- split window vertically
-- vim.keymap.set("n", "zj", "<C-w><down>s=sm", opts("window move")) -- split window vertically
-- vim.keymap.set("n", "zk", "<C-w><up>s=sm", opts("window move")) -- split window vertically
-- vim.keymap.set("n", "st", "<cmd>NvimTreeFindFile<CR>", opts("Toggle file explorer" )) -- toggle file explorer
vim.keymap.set("n", "sk", "<C-w><up>", opts("window move")) -- split window vertically
vim.keymap.set("n", "sl", "<C-w><right>", opts("window move")) -- split window vertically
vim.keymap.set("n", "s=", "<C-w>=", opts("Make splits equal size")) -- make split windows equal width & height
vim.keymap.set("n", "se", "<C-w>=", opts("Make splits equal size")) -- make split windows equal width & height
vim.keymap.set("n", "sx", "<cmd>close<CR>", opts("Close current split")) -- close current split window
vim.keymap.set("n", "sn", "<cmd>tabnew<CR>", opts("Open new tab")) -- open new tab
vim.keymap.set("n", "sc", "<cmd>tabclose<CR>", opts("Close current tab")) -- close current tab
vim.keymap.set("n", "sp", "<cmd>tabnew %<CR>", opts("Open current buffer in new tab")) --  move current buffer to new tab
vim.keymap.set("n", "sz", "<cmd>tabnew %<CR>", opts("Open current buffer in new tab")) --  move current buffer to new tab

vim.keymap.set("n", "v(", "vi(")
vim.keymap.set("n", "v)", "va(")
vim.keymap.set("n", "v,", "vi<")
vim.keymap.set("n", "v.", "va<")
vim.keymap.set("n", "v{", "vi{")
vim.keymap.set("n", "v}", "va{")
vim.keymap.set("n", "v[", "vi[")
vim.keymap.set("n", "v]", "va[")
vim.keymap.set("n", "v'", 'vi"')
vim.keymap.set("n", 'v"', 'va"')
vim.keymap.set("n", "vb", "vi{")
vim.keymap.set("n", "vc", "ggcG")
vim.keymap.set("n", "vd", "ggdG")
vim.keymap.set("n", "vH", "v^")
vim.keymap.set("n", "vL", "v$")
vim.keymap.set("n", "pg", "ggVGp")
vim.keymap.set("n", "vs", "vip")
vim.keymap.set("n", "vw", "viw")
vim.keymap.set("n", "vx", "ggVG")
vim.keymap.set("n", "vy", "ggyG")

vim.keymap.set("n", "y%", "V%y")
vim.keymap.set("n", "c%", "V%c")
vim.keymap.set("n", "d%", "V%d")
vim.keymap.set("n", "v%", "V%v")

vim.keymap.set("n", "yd", "yyp")

vim.keymap.set("n", "<leader>+", "<C-a>", opts("Increment number"))
vim.keymap.set("n", "<leader>-", "<C-x>", opts("Decrement number"))

-- vvisual
vim.keymap.set("v", "K", "<ESC>i<CR><ESC>")

-- voprator
vim.keymap.set("o", "H", "^")
vim.keymap.set("o", "L", "$")
vim.keymap.set("o", "p", "ip")
vim.keymap.set("o", "w", "iw")
vim.keymap.set("o", "(", "i(")
vim.keymap.set("o", "r", "i(")
vim.keymap.set("o", ")", "a(")
vim.keymap.set("o", "<", "i<")
vim.keymap.set("o", ".", "a<")
vim.keymap.set("o", "{", "i{")
vim.keymap.set("o", "b", "i{")
vim.keymap.set("o", "}", "a{")
vim.keymap.set("o", "c", "a{")
vim.keymap.set("o", "[", "i[")
vim.keymap.set("o", "]", "a[")
vim.keymap.set("o", "'", 'i"')
vim.keymap.set("o", '"', 'a"')

vim.keymap.set("n", "<leader>;;", ":h <C-r>*<CR>")
vim.keymap.set("n", "<leader>/", "/<D-v><CR>")
vim.keymap.set("n", "<leader>q", ":NvimTreeClose<CR>:wq<CR>")
vim.keymap.set("i", ";q", ";d<ESC>:NvimTreeClose<CR>:wq<CR>")
vim.keymap.set("n", "<leader>ww", ":w<CR>:source %<CR>")

vim.keymap.set("n", "s;", "<cmd>split | term java %<CR>")

-- vim.keymap.set("n", "x", '"_x') delete single character without copying into register

-- Jonh
-- vim.keymap.set("n", "pa", "v}Jjdd0")
-- vim.keymap.set("n", "pd", "v}Jjdd0zt")
-- vim.keymap.set("n", "ps", "v}Jj0")
-- vim.keymap.set("n", "d;", "ddvipJkddjj")

-- vim.keymap.set("n", "pa", "v}Jjdd0")
-- vim.keymap.set("n", "pd", "v}Jjdd0zt")
-- vim.keymap.set("n", "ps", "v}Jj0")
-- vim.keymap.set("n", "d;", "ddvipJkddjj")
--
-- <C-]>

local wk = require("which-key")
wk.register({
	["<leader>rb"] = { ":%bd|e#<cr>", "Global delete all buffer" },
	["<leader>gf"] = { vim.lsp.buf.format, "Buffer global format" },
	["<leader>hn"] = { ":lua require('notify').notify('Health check vim notify')<CR>", "Health check vim notify" },
	["<leader>hl"] = { ":nohlsearch<CR>", "Clear search highlight" },
	["<leader>at"] = { ':lua require("alternate-toggler").toggleAlternate()<CR>', "Toggle alternate" },
	-- ["<leader>hu"] = { package.loaded.gitsigns.undo_stage_hunk, "Undo stage hunk" },
	-- ["<leader>hb"] = { package.loaded.gitsigns.preview_hunk, "Preview hunk" },
	["<leader>hp"] = {
		function()
			package.loaded.gitsigns.blame_line({ full = true })
		end,
		"Preview git blame",
	},
	["<leader>hD"] = {
		function()
			package.loaded.gitsigns.diffthis("~")
		end,
		"Preview git different",
	},
	["<leader>cp"] = { ":Copilot panel<CR>", "Open copilot panel" },
	["<leader>fa"] = { ":lua require('telescope.builtin').autocommands()<CR>", "List all auto commands" },
	["<leader>fh"] = { ":lua require('telescope.builtin').highlights()<CR>", "List all highlights" },
	["<leader>ff"] = { ":lua require('telescope.builtin').find_files({ hidden = true })<CR>", "Find files" },
	["<leader>fg"] = { ":lua require('telescope.builtin').live_grep({ hidden = true })<CR>", "Live grep" },
	["<leader>fd"] = { ":lua require('telescope.builtin').diagnostics()<CR>", "Open workspace diagnostics" },
	["<leader>fp"] = { ":lua require('telescope.builtin').git_bcommits()<CR>", "Open buffer git commit list" },
	["<leader>fr"] = { ":lua require('telescope.builtin').lsp_references()<CR>", "Open references" },
	["<leader>ts"] = { ":TermSelect<CR>", "Open terminal selection" },
	["<leader>tt"] = { ":ToggleTerm<CR>", "Open terminal" },
	["<leader>ti"] = {
		function()
			local user_input = vim.fn.input("Enter terminal number: ")

			if user_input == "" then
				return
			end

			if "number" ~= type(tonumber(user_input)) then
				vim.notify("The input must be a number!")
				return
			end

			vim.cmd(user_input .. "ToggleTerm<CR>")
		end,
		"Open or create terminal by number",
	},
}, { mode = { "n" } })

-- Setup keymap for LSP
M.setup = function(op)
	vim.keymap.set("n", "gh", vim.lsp.buf.hover, op)
	vim.keymap.set("n", "<C-]>", ":lua require('telescope.builtin').lsp_definitions()<CR>", op)

	op.mode = { "n" }
	wk.register({
		["<leader>n"] = { vim.diagnostic.goto_next, "Jump to next diagnostic" },
		["<leader>p"] = { vim.diagnostic.goto_prev, "Jump to previous diagnostic" },
		["<leader>e"] = { vim.diagnostic.open_float, "Open float vim diagnostic" },
	}, op)
	op.mode = { "n", "v" }
	wk.register({
		["<leader>ca"] = { vim.lsp.buf.code_action, "Open code action" },
	}, op)
end

return M
