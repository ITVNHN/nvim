return {
	{
		-- Treesitter is a new parser generator tool that we can use in Neovim to power faster and more accurate syntax highlighting.
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		version = false, -- last release is way too old and doesn't work on Windows
		build = ":TSUpdate",
		-- event = { "VeryLazy" },
		event = "VimEnter",
		-- keys = {
		--   {
		--     "<leader>,",
		--     "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
		--     desc = "Switch Buffer",
		--   },
		--   { "<leader>/", LazyVim.telescope("live_grep"), desc = "Grep (Root Dir)" },
		--   { "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
		--   { "<leader><space>", LazyVim.telescope("files"), desc = "Find Files (Root Dir)" },
		--   -- find
		--   { "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
		--   { "<leader>fc", LazyVim.telescope.config_files(), desc = "Find Config File" },
		--   { "<leader>ff", LazyVim.telescope("files"), desc = "Find Files (Root Dir)" },
		--   { "<leader>fF", LazyVim.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
		--   { "<leader>fg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
		--   { "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
		--   { "<leader>fR", LazyVim.telescope("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
		--   -- git
		--   { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
		--   { "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
		--   -- search
		--   { '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
		--   { "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
		--   { "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
		--   { "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
		--   { "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
		--   { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
		--   { "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
		--   { "<leader>sg", LazyVim.telescope("live_grep"), desc = "Grep (Root Dir)" },
		--   { "<leader>sG", LazyVim.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
		--   { "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
		--   { "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
		--   { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
		--   { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
		--   { "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
		--   { "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
		--   { "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
		--   { "<leader>sw", LazyVim.telescope("grep_string", { word_match = "-w" }), desc = "Word (Root Dir)" },
		--   { "<leader>sW", LazyVim.telescope("grep_string", { cwd = false, word_match = "-w" }), desc = "Word (cwd)" },
		--   { "<leader>sw", LazyVim.telescope("grep_string"), mode = "v", desc = "Selection (Root Dir)" },
		--   { "<leader>sW", LazyVim.telescope("grep_string", { cwd = false }), mode = "v", desc = "Selection (cwd)" },
		--   { "<leader>uC", LazyVim.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with Preview" },
		--   {
		--     "<leader>ss",
		--     function()
		--       require("telescope.builtin").lsp_document_symbols({
		--         symbols = require("lazyvim.config").get_kind_filter(),
		--       })
		--     end,
		--     desc = "Goto Symbol",
		--   },
		--   {
		--     "<leader>sS",
		--     function()
		--       require("telescope.builtin").lsp_dynamic_workspace_symbols({
		--         symbols = require("lazyvim.config").get_kind_filter(),
		--       })
		--     end,
		--     desc = "Goto Symbol (Workspace)",
		--   },
		-- },
		keys = {
			{ "sv", "<C-w>v<cmd>Telescope find_files<cr>", { desc = "window vertical" } },
			{ "ss", "<C-w>s<cmd>Telescope find_files<cr>", { desc = "window horizonta" } },
			{ "sn", "<cmd>tabnew<CR><cmd>Telescope find_files<cr>", { desc = "Open new tab" } }, -- open new tab
			{ "sf", "<cmd>Telescope find_files<cr>", { desc = "find files in cwd" } },
			{ "sb", "<cmd>Telescope buffers<cr>", { desc = "buffers" } },
			{ "<leader>tr", "<cmd>Telescope oldfiles<cr>", { desc = "find old files" } },
			{ "s/", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" } },
			{ "<leader>/", "<cmd>Telescope live_grep<cr><C-r>*<cr>", { desc = "Find string copy in cwd" } },
			-- { "<leader>sG", LazyVim.telescope("live_grep", { cwd = false }), desc = "Grep (cwd)" },
			{ "<leader>tw", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" } },
			{ "<leader>tk", "<cmd>Telescope keymaps<cr>", { desc = "keymaps" } },
			{ "<leader>,", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Switch Buffer" },
			{ "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
			{ "<leader>fb", "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>", desc = "Buffers" },
			-- { "<leader>fc", LazyVim.telescope.config_files(), desc = "Find Config File" },
			-- { "<leader>ff", LazyVim.telescope("files"), desc = "Find Files (Root Dir)" },
			-- { "<leader>fF", LazyVim.telescope("files", { cwd = false }), desc = "Find Files (cwd)" },
			{ "<leader>sg", "<cmd>Telescope git_files<cr>", desc = "Find Files (git-files)" },
			{ "so", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
			-- { "<leader>fR", LazyVim.telescope("oldfiles", { cwd = vim.uv.cwd() }), desc = "Recent (cwd)" },
			-- git
			{ "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Commits" },
			{ "<leader>gs", "<cmd>Telescope git_status<CR>", desc = "Status" },
			-- search
			{ '<leader>s"', "<cmd>Telescope registers<cr>", desc = "Registers" },
			{ "<leader>sa", "<cmd>Telescope autocommands<cr>", desc = "Auto Commands" },
			{ "<leader>sb", "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Buffer" },
			{ "<leader>sc", "<cmd>Telescope command_history<cr>", desc = "Command History" },
			{ "<leader>sC", "<cmd>Telescope commands<cr>", desc = "Commands" },
			{ "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document Diagnostics" },
			{ "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace Diagnostics" },
			{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
			{ "<leader>sH", "<cmd>Telescope highlights<cr>", desc = "Search Highlight Groups" },
			{ "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
			{ "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
			{ "<leader>so", "<cmd>Telescope vim_options<cr>", desc = "Options" },
			{ "<leader>sR", "<cmd>Telescope resume<cr>", desc = "Resume" },
			-- { "<leader>sw", LazyVim.telescope("grep_string", { word_match = "-w" }), desc = "Word (Root Dir)" },
			-- { "<leader>sW", LazyVim.telescope("grep_string", { cwd = false, word_match = "-w" }), desc = "Word (cwd)" },
			-- { "<leader>sw", LazyVim.telescope("grep_string"), mode = "v", desc = "Selection (Root Dir)" },
			-- { "<leader>sW", LazyVim.telescope("grep_string", { cwd = false }), mode = "v", desc = "Selection (cwd)" },
			-- { "<leader>uC", LazyVim.telescope("colorscheme", { enable_preview = true }), desc = "Colorscheme with Preview", },
			{
				"<leader>ss",
				function()
					require("telescope.builtin").lsp_document_symbols({
						symbols = require("lazyvim.config").get_kind_filter(),
					})
				end,
				desc = "Goto Symbol",
			},
			{
				"<leader>sS",
				function()
					require("telescope.builtin").lsp_dynamic_workspace_symbols({
						symbols = require("lazyvim.config").get_kind_filter(),
					})
				end,
				desc = "Goto Symbol (Workspace)",
			},
		},

		init = function(plugin)
			-- PERF: add nvim-treesitter queries to the rtp and it's custom query predicates early
			-- This is needed because a bunch of plugins no longer `require("nvim-treesitter")`, which no longer trigger the **nvim-treesitter** module to be loaded in time.
			-- Luckily, the only things that those plugins need are the custom queries, which we make available during startup.
			-- require("lazy.core.loader").add_to_rtp(plugin)
			-- require("nvim-treesitter.query_predicates")
		end,
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
			"nvim-tree/nvim-web-devicons",
			{
				"nvim-treesitter/nvim-treesitter-textobjects",
				config = function()
					-- When in diff mode, we want to use the default vim text objects c & C instead of the treesitter ones.
					local move = require("nvim-treesitter.textobjects.move") ---@type table<string,fun(...)>
					local configs = require("nvim-treesitter.configs")
					for name, fn in pairs(move) do
						if name:find("goto") == 1 then
							move[name] = function(q, ...)
								if vim.wo.diff then
									local config = configs.get_module("textobjects.move")[name] ---@type table<string,string>
									for key, query in pairs(config or {}) do
										if q == query and key:find("[%]%[][cC]") then
											vim.cmd("normal! " .. key)
											return
										end
									end
								end
								return fn(q, ...)
							end
						end
					end
				end,
			},
		},
		cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
		-- opts = function()
		-- 	local actions = require("telescope.actions")
		-- 	local telescope = require("telescope")
		-- 	local open_with_trouble = function(...)
		-- 		return require("trouble.providers.telescope").open_with_trouble(...)
		-- 	end
		-- 	local open_selected_with_trouble = function(...)
		-- 		return require("trouble.providers.telescope").open_selected_with_trouble(...)
		-- 	end
		-- 	local find_files_no_ignore = function()
		-- 		local action_state = require("telescope.actions.state")
		-- 		local line = action_state.get_current_line()
		-- 		-- telescope?("find_files", { no_ignore = true, default_text = line })()
		-- 	end
		-- 	local find_files_with_hidden = function()
		-- 		local action_state = require("telescope.actions.state")
		-- 		local line = action_state.get_current_line()
		-- 		LazyVim.telescope("find_files", { hidden = true, default_text = line })()
		-- 	end
		--
		-- 	return {
		-- 		defaults = {
		-- 			prompt_prefix = " ",
		-- 			selection_caret = " ",
		-- 			-- open files in the first window that is an actual file.
		-- 			-- use the current window if no other window is available.
		-- 			get_selection_window = function()
		-- 				local wins = vim.api.nvim_list_wins()
		-- 				table.insert(wins, 1, vim.api.nvim_get_current_win())
		-- 				for _, win in ipairs(wins) do
		-- 					local buf = vim.api.nvim_win_get_buf(win)
		-- 					if vim.bo[buf].buftype == "" then
		-- 						return win
		-- 					end
		-- 				end
		-- 				return 0
		-- 			end,
		-- 			mappings = {
		-- 				i = {
		-- 					-- ["<c-t>"] = open_with_trouble,
		-- 					-- ["<a-t>"] = open_selected_with_trouble,
		-- 					-- ["<a-i>"] = find_files_no_ignore,
		-- 					-- ["<a-h>"] = find_files_with_hidden,
		-- 					["<C-Down>"] = actions.cycle_history_next,
		-- 					["<C-Up>"] = actions.cycle_history_prev,
		-- 					["<C-f>"] = actions.preview_scrolling_down,
		-- 					["<C-b>"] = actions.preview_scrolling_up,
		-- 				},
		-- 				n = {
		-- 					["q"] = actions.close,
		-- 				},
		-- 			},
		-- 		},
		-- 	}
		-- end,
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local common_setting = {
				-- theme = "",
				-- prompt_prefix = "  ",
			}

			telescope.setup({
				pickers = {
					find_files = vim.list_extend(common_setting, {
						find_command = "rg,--ignore,--hidden,--files",
					}),
					live_grep = vim.list_extend(common_setting, {}),
					buffers = vim.list_extend(common_setting, {}),
					diagnostics = vim.list_extend(common_setting, {}),
					git_bcommits = vim.list_extend(common_setting, {}),
					lsp_references = vim.list_extend(common_setting, {}),
					highlights = vim.list_extend(common_setting, {}),
					autocommands = vim.list_extend(common_setting, {}),
				},
				defaults = {
					layout_config = {
						horizontal = {
							-- view = {
							-- 	relativenumber = true,
							-- },
							preview_width = 0.6,
							height = 0.9999,
							-- preview_cutoff = 4,
							preview_cutoff = 140,
							prompt_position = "bottom",
							width = 0.9999,
						},
						vertical = { width = 0.8 },
					},
					-- path_display = { "truncate " },
					path_display = { shorten = { len = 3, exclude = { 1, -2, -1 } } },
					mappings = {
						i = {
							-- ["<A-p>"] = actions.layout.toggle_preview, --error "Key does not exist for 'telescope.actions': "
							-- ["<A-h>"] = telescope.extensions.hop.hop,
							["<C-x>"] = actions.delete_buffer,
							["<C-s>"] = actions.select_horizontal,
							["<C-v>"] = actions.select_vertical,
							["<C-t>"] = actions.select_tab,
							-- ["<C-;>e"] = actions.file_edit, --understand
							[";c"] = actions.close,
							["<C-j>"] = actions.move_selection_next,
							["<C-k>"] = actions.move_selection_previous,
							["<CR>"] = actions.select_default + actions.center,
							["<C-up>"] = actions.preview_scrolling_up,
							["<A-k>"] = actions.preview_scrolling_up,
							["<A-j>"] = actions.preview_scrolling_down,
							["<A-q>"] = actions.send_to_qflist + actions.open_qflist,
							["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
							-- ["<C-y>"] = functions.set_prompt_to_entry_value,
						},
						n = {
							["c"] = "close",
							-- ["<A-p>"] = actions.layout.toggle_preview,
							["j"] = actions.move_selection_next,
							["k"] = actions.move_selection_previous,
							["<C-x>"] = actions.delete_buffer,
							["<C-s>"] = actions.select_horizontal,
							["<C-v>"] = actions.select_vertical,
							["<C-t>"] = actions.select_tab,
							["h"] = actions.preview_scrolling_up,
							["l"] = actions.preview_scrolling_down,
							["<C-q>"] = actions.send_to_qflist,
							["<M-q>"] = actions.send_to_qflist + actions.open_qflist,
						},
					},
				},
			})

			telescope.load_extension("fzf")

			-- Slightly advanced example of overriding default behavior and theme
			vim.keymap.set("n", "<leader>sf", function()
				-- You can pass additional configuration to Telescope to change the theme, layout, etc.
				builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
					winblend = 10,
					previewer = false,
				}))
			end, { desc = "[/] Fuzzily search in current buffer" })

			-- It's also possible to pass additional configuration options.
			--  See `:help telescope.builtin.live_grep()` for information about particular keys
			vim.keymap.set("n", "<leader>s/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })

			-- Shortcut for searching your Neovim configuration files
			vim.keymap.set("n", "<leader>sn", function()
				builtin.find_files({ cwd = vim.fn.stdpath("config") })
			end, { desc = "[S]earch [N]eovim files" })
			-- vim.keymap.set("n", "sv", "<C-w>v<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
			-- vim.keymap.set("n", "ss", "<C-w>s<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
			-- vim.keymap.set("n", "sn", "<cmd>tabnew<CR><cmd>Telescope find_files<cr>", { desc = "Open new tab" }) -- open new tab
			-- vim.keymap.set("n", "sf", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
			-- vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
			-- vim.keymap.set("n", "s/", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
			-- vim.keymap.set("n", "<leader>/", "<cmd>Telescope live_grep<cr><ESC>p<cr>", { desc = "Find string in cwd" })
			-- vim.keymap.set( "n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		end,
	},
	{
		-- Show context of the current function
		"nvim-treesitter/nvim-treesitter-context",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		enabled = true,
		opts = {
			enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
			max_lines = 2, -- How many lines the window should span. Values <= 0 mean no limit.
			min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
			line_numbers = true,
			multiline_threshold = 20, -- Maximum number of lines to show for a single context
			trim_scope = "outer", -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
			mode = "cursor", -- Line used to calculate context. Choices: 'cursor', 'topline'
			-- Separator between context and content. Should be a single character string, like '-'.
			-- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
			separator = nil,
			zindex = 20, -- The Z-index of the context window
			on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
		},
	},
}
