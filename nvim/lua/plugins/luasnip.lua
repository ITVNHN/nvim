return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release) install jsregexp (optional!).
	build = "make install_jsregexp",
	event = "InsertEnter",
	keys = {
		{
			"<Tab>",
			function()
				if vim.snippet.jumpable(1) then
					vim.schedule(function()
						vim.snippet.jump(1)
					end)
					return
				end
				return "<Tab>"
			end,
			expr = true,
			silent = true,
			mode = "i",
		},
		{
			"<Tab>",
			function()
				vim.schedule(function()
					vim.snippet.jump(1)
				end)
			end,
			silent = true,
			mode = "s",
		},
		{
			"<S-Tab>",
			function()
				if vim.snippet.jumpable(-1) then
					vim.schedule(function()
						vim.snippet.jump(-1)
					end)
					return
				end
				return "<S-Tab>"
			end,
			expr = true,
			silent = true,
			mode = { "i", "s" },
		},
	},
	dependencies = {
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	config = function()
		local luasnip = require("luasnip")

		local ls = require("luasnip")
		local s = ls.snippet
		local sn = ls.snippet_node
		local isn = ls.indent_snippet_node
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node
		local c = ls.choice_node
		local d = ls.dynamic_node
		local r = ls.restore_node
		local events = require("luasnip.util.events")
		local ai = require("luasnip.nodes.absolute_indexer")
		local extras = require("luasnip.extras")
		local l = extras.lambda
		local rep = extras.rep
		local p = extras.partial
		local m = extras.match
		local n = extras.nonempty
		local dl = extras.dynamic_lambda
		local fmt = require("luasnip.extras.fmt").fmt
		local fmta = require("luasnip.extras.fmt").fmta
		local conds = require("luasnip.extras.expand_conditions")
		local postfix = require("luasnip.extras.postfix").postfix
		local types = require("luasnip.util.types")
		local parse = require("luasnip.util.parser").parse_snippet
		local ms = ls.multi_snippet
		local k = require("luasnip.nodes.key_indexer").new_key

		luasnip.setup({
			ls.add_snippets("lua", {
				s("cof", {
					t("return {"),
					t("/n"),
					i(1),
					t(",/nconfig = function()/n"),
					i(2),
					t("end,/n}"),
				}),
			}),
		})
		require("luasnip").filetype_extend("ruby", { "rails" })
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
