-- LSP, Mason, mason-lscpconfig, nvim-lspconfig

local keyMapper = require("utils.keyMapper").mapKey

return {

	{
		-- mason will manage the language servers brought by mason-lspconfig
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},

	{
		-- bring the language servers to mason
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- add languages to use
				ensure_installed = { "lua_ls", "pyright" },
			})
		end,
	},

	{
		-- connect nvim with lsp servers
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")

			-- setup lua_ls with diagnostics for vim globals
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" }, -- add 'vim' as a global variable
						},
					},
				},
			})

			-- add setup() for each language servers brought be mason-lspconfig
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})

			-- setting for lsp
			keyMapper("K", vim.lsp.buf.hover) -- info about hovering characters
			keyMapper("gd", vim.lsp.buf.definition) -- go to definition
			keyMapper("<leader>ca", vim.lsp.buf.code_action) -- code action recommendations
			keyMapper("<leader>fr", vim.lsp.buf.references) -- find references
			keyMapper("<leader>rn", vim.lsp.buf.rename) -- rename function
		end,
	},
}
