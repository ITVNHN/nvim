local M = {}

-- local opts = { noremap = true, silent = true }
vim.b.optNo = function(desc)
	return { desc = desc, noremap = false, nowait = true }
end
vim.b.optRe = function(desc)
	return { desc = desc, noremap = true, nowait = true }
end
local function opts(desc)
	return { desc = desc, remap = true, nowait = true }
end

vim.keymap.set({ "i", "n" }, "<M-,>", ":BufferPrevious<CR>")
vim.keymap.set({ "i", "n" }, "<M-.>", ":BufferNext<CR>")
vim.keymap.set({ "i", "n" }, "<M-c>", ":BufferClose<CR>")
vim.keymap.set({ "i", "n" }, "<M-C>", ":BufferClose!<CR>")

-- vim.keymap.set("n", "<C-/>", "gcc")
-- vim.keymap.set("n", "i;", "gcc")
vim.keymap.set("n", "i/", "gcc", { remap = true })
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
vim.keymap.set("i", ";{", "<right> {}<Left><CR>")
vim.keymap.set("i", ";/", "<ESC>/")
vim.keymap.set("i", ";?", "<ESC>?")

-- vim.keymap.set("i", ";n", "(n)")
-- vim.keymap.set("i", ";v", "(v)")
-- vim.keymap.set("i", ";p", "(prep)")
-- vim.keymap.set("i", ";a", "(adj)")

-- vnormal
vim.keymap.set("n", "H", "<C-b>")

vim.keymap.set("n", "in", "/<C-r>*<CR>")
vim.keymap.set("n", "ii", "i")
vim.keymap.set("n", "ij", "vipJ")

vim.keymap.set("n", "L", "<C-f>")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")
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
vim.keymap.set("n", "pa", "vaaP")
vim.keymap.set("n", "pi", "viaP")
vim.keymap.set("n", "pj", "ddp")
vim.keymap.set("n", "pp", "p")
vim.keymap.set("n", "pw", "viwP")
vim.keymap.set("n", "p9", "vi(P")
vim.keymap.set("n", "p[", "vi[P")
vim.keymap.set("n", 'p"', 'va"P')
vim.keymap.set("n", "p'", 'vi"P')
vim.keymap.set("n", "p{", "vi{P")
vim.keymap.set("n", "p,", "vi<P")
vim.keymap.set("n", "p.", "vi>P")

vim.keymap.set("n", "r", "")
vim.keymap.set("n", "rr", "r", opts("rename"))
vim.keymap.set("n", "rn", vim.lsp.buf.rename, opts("Smart rename")) -- smart rename

vim.keymap.set("n", "s", "")
vim.keymap.set("n", "sh", "<C-w><left>", opts("window left")) -- split window vertically
vim.keymap.set("n", "sj", "<C-w><down>", opts("window down")) -- split window vertically
vim.keymap.set("n", "sk", "<C-w><up>", opts("window up")) -- split window vertically
vim.keymap.set("n", "sl", "<C-w><right>", opts("window right")) -- split window vertically
vim.keymap.set("n", "s=", "<C-w>=", opts("window equal size")) -- make split windows equal width & height
vim.keymap.set("n", "se", "<C-w>=", opts("window equal size")) -- make split windows equal width & height
vim.keymap.set("n", "sx", "<cmd>close<CR>", opts("Close current split")) -- close current split window
vim.keymap.set("n", "sn", "<cmd>tabnew<CR>", opts("Open new tab")) -- open new tab
vim.keymap.set("n", "sc", "<cmd>tabclose<CR>", opts("Close current tab")) -- close current tab
vim.keymap.set("n", "sb", "<cmd>tabnew %<CR>", opts("Open current buffer in new tab")) --  move current buffer to new tab

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
vim.keymap.set("n", "pg", "ggVGP")
vim.keymap.set("n", "vs", "viP")
vim.keymap.set("n", "vw", "viw")
vim.keymap.set("n", "vx", "ggVG")
vim.keymap.set("n", "vy", "ggyG")

vim.keymap.set("n", "y%", "V%y")
vim.keymap.set("n", "c%", "V%c")
vim.keymap.set("n", "d%", "V%d")
vim.keymap.set("n", "v%", "V%v")

vim.keymap.set("n", "yd", "yyP")

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
vim.keymap.set("n", "qq", ":NvimTreeClose<CR>:wq<CR>")
vim.keymap.set("i", ";q", ";d<ESC>:NvimTreeClose<CR>:wq<CR>")
vim.keymap.set("n", "qw", ":w<CR>:source %<CR>")

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

return M
