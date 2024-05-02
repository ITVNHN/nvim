return {
	{
		"numToStr/Comment.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
		config = {
			function()
				local comment = require("Comment")
				local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

				comment.setup({
					-- for commenting tsx and jsx files
					pre_hook = ts_context_commentstring.create_pre_hook(),
				})
			end,
		},
	},
	-- {
	-- 	"ggandor/leap.nvim",
	-- 	enabled = true,
	-- 	keys = {
	-- 		{ "s", mode = { "n", "x", "o" }, desc = "Leap Forward to" },
	-- 		{ "S", mode = { "n", "x", "o" }, desc = "Leap Backward to" },
	-- 		{ "gs", mode = { "n", "x", "o" }, desc = "Leap from Windows" },
	-- 	},
	-- 	config = function(_, opts)
	-- 		local leap = require("leap")
	-- 		for k, v in pairs(opts) do
	-- 			leap.opts[k] = v
	-- 		end
	-- 		leap.add_default_mappings(true)
	-- 		vim.keymap.del({ "x", "o" }, "x")
	-- 		vim.keymap.del({ "x", "o" }, "X")
	-- 	end,
	-- },
}
