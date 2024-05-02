return {
	{
		"rmagatti/alternate-toggler",
		event = { "BufReadPost" }, -- lazy load after reading a buffer
		-- event = { "BufRead", "BufEnter" },
		config = function()
			require("alternate-toggler").setup({
				alternates = {
					["=="] = "!=",
					["true"] = "false",
					["True"] = "False",
					["TRUE"] = "FALSE",
					["Yes"] = "No",
					["YES"] = "NO",
					["1"] = "0",
					["<"] = ">",
					["<="] = ">=",
					["("] = ")",
					["["] = "]",
					["{"] = "}",
					['"'] = "'",
					['""'] = "''",
					["+"] = "-",
					["==="] = "!==",
				},
			})
			vim.keymap.set(
				"n",
				"<leader>!",
				"<cmd>lua require('alternate-toggler').toggleAlternate()<CR>",
				{ desc = "toggles the current word" }
			)
		end,
	},
	{
		-- Find the enemy and replace them with dark power.
		"nvim-pack/nvim-spectre",
		build = false,
		cmd = "Spectre",
		opts = { open_cmd = "noswapfile vnew" },
		-- keys = {
		--   { "<leader>wr", function() require("spectre").open() end, desc = "Replace in Files (Spectre)" },
		--   { "<leader>w~", "<cmd>lua require("spectre").toggle()<CR>", { desc = "Toggle Spectre" }},
		--   { "<leader>ww", "<cmd>lua require("spectre").open_visual({select_word=true})<CR>", { desc = "Search current word", mode={"v"}  }},
		--   { "<leader>ww", "<esc><cmd>lua require("spectre").open_visual()<CR>", desc = "Search current word" },
		--   { "<leader>wp", "<cmd>lua require("spectre").open_file_search({select_word=true})<CR>", desc = "Search on current file", },
		-- },
		config = function()
			vim.keymap.set("n", "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', { desc = "Toggle Spectre" })
			vim.keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
				desc = "Search current word",
			})
			vim.keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
				desc = "Search current word",
			})
			vim.keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
				desc = "Search on current file",
			})
			-- vim.keymap.set("n", "<leader>zt", "<cmd>lua require("spectre").toggle()<CR>", { desc = "Toggle Spectre" })
			-- vim.keymap.set(
			-- 	"n",
			-- 	"<leader>zv",
			-- 	"<cmd>lua require("spectre").open_visual({select_word=true})<CR>",
			-- 	{ desc = "Search current word" }
			-- )
			-- vim.keymap.set("v", "<leader>zv", "<esc><cmd>lua require("spectre").open_visual()<CR>", {
			-- 	desc = "Search current word",
			-- })
			-- vim.keymap.set("n", "<leader>zs", "<cmd>lua require("spectre").open_file_search({select_word=true})<CR>", {
			-- 	desc = "Search on current file",
			-- })
		end,
	},
}
