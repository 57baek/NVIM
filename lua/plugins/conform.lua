return {

	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		local conform = require("conform")
		conform.setup({

			-- add formatter as you add language
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
			},

			format_on_save = {
				timeout_ms = 500,
			},
		})
	end,
}
