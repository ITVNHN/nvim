return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	lazy = true,
	cmd = "ConformInfo",
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	keys = {
		{
			"qf",
			function()
				require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
			end,
			mode = { "n", "v" },
			desc = "Format Injected Langs",
		},
	},
	config = function()
		local conform = require("conform")

		conform.setup({
			-- Map of filetype to formatters
			formatters_by_ft = {
				svelte = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				-- go = { "goimports", "gofmt" },
				-- Use a sub-list to run only the first available formatter
				-- javascript = { { "prettierd", "prettier" } },
				-- You can use a function here to determine the formatters dynamically
				-- python = function(bufnr)
				-- 	if require("conform").get_formatter_info("ruff_format", bufnr).available then
				-- 		return { "ruff_format" }
				-- 	else
				-- 		return { "isort", "black" }
				-- 	end
				-- end,
				-- Use the "*" filetype to run formatters on all filetypes.
				-- ["*"] = { "codespell" },
				-- Use the "_" filetype to run formatters on filetypes that don't
				-- have other formatters configured.
				-- ["_"] = { "trim_whitespace" },
			},
			format = {
				timeout_ms = 3000,
				async = false, -- not recommended to change
				quiet = false, -- not recommended to change
				lsp_fallback = true, -- not recommended to change
			},
			-- If this is set, Conform will run the formatter on save. It will pass the table to conform.format(). This can also be a function that returns the table.
			format_on_save = {
				-- I recommend these options. See :help conform.format for details.
				lsp_fallback = true, -- tells conform.nvim to use the lsp if no formatter is available.
				async = false, -- means to not do asynchronous formatting.
				timeout_ms = 500, -- means to timeout after 500ms if formatting isn’t finished
			},
		})
	end,
}
