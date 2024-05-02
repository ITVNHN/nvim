return vim.b.colorscheme ~= "catppuccin" and {}
	or {
		"catppuccin/nvim",
		config = function()
			require("catppuccin").setup(require("lua.plugins.catppuccin-colorscheme.2 "))
			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	}
