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
				postion = "left",
				width = 30,
				mappings = {
					-- Your mappings here
				},
			},
		})

		-- Custom function to change Neo-tree width
		_G.change_neotree_width = function(delta)
			-- Get the window ID for Neo-tree
			local win_id = vim.fn.bufwinid("neo-tree")
			if win_id ~= -1 then
				vim.api.nvim_win_set_width(win_id, vim.api.nvim_win_get_width(win_id) + delta)
			end
		end

		-- Check if current window is Neo-tree
		_G.is_neotree_window = function()
			local bufname = vim.api.nvim_buf_get_name(0)
			return bufname:match("neo%-tree") ~= nil
		end
	end,
}
