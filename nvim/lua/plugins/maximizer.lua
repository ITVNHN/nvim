return {
	"szw/vim-maximizer",
	keys = {
		{ "sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
		{
			"<M-h>",
			"<ESC><C-w><left><C-w>=<cmd>MaximizerToggle<CR>",
			mode = { "i", "n" },
			desc = "Maximize/minimize a split",
		},
		{
			"<M-j>",
			"<ESC><C-w><down><C-w>=<cmd>MaximizerToggle<CR>",
			mode = { "i", "n" },
			desc = "Maximize/minimize a split",
		},
		{
			"<M-k>",
			"<ESC><C-w><up><C-w>=<cmd>MaximizerToggle<CR>",
			mode = { "i", "n" },
			desc = "Maximize/minimize a split",
		},
		{
			"<M-l>",
			"<ESC><C-w><right><C-w>=<cmd>MaximizerToggle<CR>",
			mode = { "i", "n" },
			desc = "Maximize/minimize a split",
		},
	},
}
