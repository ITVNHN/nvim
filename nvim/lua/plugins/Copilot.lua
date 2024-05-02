return {

	{
		-- uses OpenAI Codex to suggest code and entire functions in real-time right from your editor. Trained on billions of lines of public code, GitHub Copilot turns natural language prompts including comments and method names into coding suggestions across dozens of languages.
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		build = ":Copilot auth",
		event = "InsertEnter",
		opts = {
			suggestion = { enabled = false },
			panel = { enabled = false },
		},
	},
	{
		"nvim-cmp",
		dependencies = {
			{
				"zbirenbaum/copilot-cmp",
				opts = {},
				config = function()
					local cmp = require("cmp")
					local lspkind = require("lspkind")

					-- Copilot's cmp source now has a builtin highlight group CmpItemKindCopilot. To add an icon to copilot for lspkind, simply add copilot to your lspkind symbol map.
					lspkind.init({
						symbol_map = {
							Copilot = "",
						},
					})

					vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })

					cmp.setup({

						-- Comparators: One custom comparator for sorting cmp entries is provided: prioritize. The prioritize comparator causes copilot entries to appear higher in the cmp menu. It is recommended keeping priority weight at 2, or placing the exact comparator above copilot so that better lsp matches are not stuck below poor copilot matches.
						sorting = {
							priority_weight = 2,
							comparators = {
								require("copilot_cmp.comparators").prioritize,

								-- Below is the default comparator list and order for nvim-cmp
								cmp.config.compare.offset,
								-- cmp.config.compare.scopes, --this is commented in nvim-cmp too
								cmp.config.compare.exact,
								cmp.config.compare.score,
								cmp.config.compare.recently_used,
								cmp.config.compare.locality,
								cmp.config.compare.kind,
								cmp.config.compare.sort_text,
								cmp.config.compare.length,
								cmp.config.compare.order,
							},
						},
						sources = {
							{ name = "copilot" },
						},
						mapping = cmp.mapping.preset.insert({
							-- documentation says this is important. I don't know why.
							["<CR>"] = cmp.mapping.confirm({
								behavior = cmp.ConfirmBehavior.Replace,
								select = false,
							}),
						}),
						formatting = {
							format = lspkind.cmp_format({
								mode = "symbol",
								symbol_map = { Copilot = "" },
							}),
						},
					})
				end,
			},
		},
	},
}
