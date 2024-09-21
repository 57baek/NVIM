return {
	{
		"mbbill/undotree",
		event = "VeryLazy",
		config = function()
			local mapKey = require("utils.keyMapper").mapKey

			-- Set up keybinding to toggle Undotree
			mapKey("<leader>u", vim.cmd.UndotreeToggle)

			-- Optional: You can add more Undotree-specific settings here
			vim.g.undotree_SetFocusWhenToggle = 1
			vim.g.undotree_WindowLayout = 2
		end,
	},
}
