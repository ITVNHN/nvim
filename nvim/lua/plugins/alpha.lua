return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")
		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
		dashboard.section.header.val = { "nvim" }

		-- Set header
		-- dashboard.section.header.val = {
		-- 	"                                                     ",
		-- 	"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
		-- 	"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
		-- 	"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
		-- 	"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
		-- 	"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
		-- 	"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
		-- 	"                                                     ",
		-- }

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("b", " " .. " Config", "<cmd>Telescope buffers<cr>"),
			dashboard.button("h", " " .. " search_history", "<cmd>Telescope search_history<cr>"),
			dashboard.button("e", " " .. " Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
			dashboard.button("f", "󰱼" .. " Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
			dashboard.button("n", " " .. " New File", "<cmd>ene<CR>"),
			-- dashboard.button("n", " " .. " New file", "<cmd> ene <BAR> startinsert <cr>"),
			dashboard.button("o", " " .. " oldfiles", "<cmd>Telescope oldfiles<cr><ESC>;"),
			dashboard.button("R", "󰁯 " .. " Restore Session For Current Directory", "<cmd>SessionRestore<CR>"),
			dashboard.button("x", " " .. " Lazy Extras", "<cmd> LazyExtras <cr>"),
			dashboard.button("r", " " .. " Recent files", "<cmd> Telescope oldfiles <cr>"),
			dashboard.button("/", " " .. " Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("q", "" .. " Quit NVIM", "<cmd>qa<CR>"),
		}

		for _, button in ipairs(dashboard.section.buttons.val) do
			button.opts.hl = "AlphaButtons"
			button.opts.hl_shortcut = "AlphaShortcut"
		end
		dashboard.section.header.opts.hl = "AlphaHeader"
		dashboard.section.buttons.opts.hl = "AlphaButtons"
		dashboard.section.footer.opts.hl = "AlphaFooter"
		dashboard.opts.layout[1].val = 8
		return dashboard
	end,
	config = function(_, dashboard)
		-- close Lazy and re-open when the dashboard is ready
		if vim.o.filetype == "lazy" then
			vim.cmd.close()
			vim.api.nvim_create_autocmd("User", {
				once = true,
				pattern = "AlphaReady",
				callback = function()
					require("lazy").show()
				end,
			})
		end

		require("alpha").setup(dashboard.opts)

		vim.api.nvim_create_autocmd("User", {
			once = true,
			pattern = "LazyVimStarted",
			callback = function()
				local stats = require("lazy").stats()
				local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
				dashboard.section.footer.val = "⚡ Neovim loaded "
					.. stats.loaded
					.. "/"
					.. stats.count
					.. " plugins in "
					.. ms
					.. "ms"
				pcall(vim.cmd.AlphaRedraw)
			end,
		})
	end,
}
