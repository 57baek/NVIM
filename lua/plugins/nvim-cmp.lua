return {
	{
		"hrsh7th/nvim-cmp",
		event = { "BufReadPost", "BufNewFile" },
		dependencies = {

			{
				"L3MON4D3/LuaSnip",
				version = "v2.*",
				build = "make install_jsregexp",
			},

			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"rafamadriz/friendly-snippets",
		},

		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")

			-- load snippets
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({

				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},

				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},

				mapping = {
					-- ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- Scroll documentation up
					-- ["<C-f>"] = cmp.mapping.scroll_docs(4), -- Scroll documentation down
					-- ["<C-Space>"] = cmp.mapping.complete(), -- Trigger completion
					-- ["<C-e>"] = cmp.mapping.abort(), -- Abort completion
					["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }), -- Go to next completion item
					["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }), -- Go to previous completion item
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
					-- ["<space>v"] = cmp.mapping.complete(), -- Trigger completion with space + q
				},

				-- autocompletion sources
				sources = cmp.config.sources({
					{ name = "nvim_lsp" }, -- lsp
					{ name = "buffer", max_item_count = 5 }, -- text within current buffer
					{ name = "path", max_item_count = 5 }, -- file system paths
					{ name = "luasnip", max_item_count = 5 }, -- snippets
				}),
			})
		end,
	},
}
