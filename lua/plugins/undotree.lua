return {
	{
		"mbbill/undotree",
		event = "VeryLazy",
		config = function()
			local mapKey = require("utils.keyMapper").mapKey

			-- Optional: You can add more Undotree-specific settings here
			vim.g.undotree_SetFocusWhenToggle = 1
			vim.g.undotree_WindowLayout = 2
		end,
	},
}
