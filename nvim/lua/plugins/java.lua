-- This is the same as in lspconfig.server_configurations.jdtls, but avoids needing to require that when this module loads.
local java_filetypes = { "java" }

-- Utility function to extend or override a config table, similar to the way that Plugin.opts works.
---@param config table
---@param custom function | table | nil
local function extend_or_override(config, custom, ...)
	if type(custom) == "function" then
		config = custom(config, ...) or config
	elseif custom then
		config = vim.tbl_deep_extend("force", config, custom) --[[@as table]]
	end
	return config
end

return {
	{
		-- Add java to treesitter.
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			opts.ensure_installed = opts.ensure_installed or {}
			vim.list_extend(opts.ensure_installed, { "java" })
		end,
	},

	{
		-- Ensure java debugger and test packages are installed.
		"mfussenegger/nvim-dap",
		optional = true,
		dependencies = {
			{
				"williamboman/mason.nvim",
				opts = function(_, opts)
					opts.ensure_installed = opts.ensure_installed or {}
					vim.list_extend(opts.ensure_installed, { "java-test", "java-debug-adapter" })
				end,
			},
		},
	},

	{
		-- Quickstart configs for Nvim LSP: lspsaga adds ui/commands that take advantage of the capabilities of the neovim lsp client like showing information in statusline and nice looking commands for goto definition and stuff: Configure nvim-lspconfig to install the server automatically via mason, but defer actually starting it to our configuration of nvim-jtdls below.
		"neovim/nvim-lspconfig",
		opts = {
			-- make sure mason installs the server
			servers = {
				jdtls = {},
			},
			setup = {
				jdtls = function()
					return true -- avoid duplicate servers
				end,
			},
		},
	},
}
