return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Neo-tree setup
		require("neo-tree").setup({
			close_if_last_window = true,
			popup_border_style = "rounded",
			window = {
				position = "left",
				width = 30,
				mappings = {
					-- Your mappings here
				},
			},
		})
	end,
}
