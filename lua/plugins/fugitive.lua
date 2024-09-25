return {
	{
		"tpope/vim-fugitive",
		event = "VeryLazy",
		config = function()
			-- Set up keymaps
			local mapKey = require("utils.keyMapper").mapKey

			-- -- Open Git status
			mapKey("<leader>gs", ":Git<CR>")

			-- Open Git log
			mapKey("<leader>gl", ":Git log<CR>")

			-- Git push
			mapKey("<leader>gp", ":Git push origin main<CR>")

			-- Git pull
			mapKey("<leader>gpl", ":Git pull<CR>")

			-- Git diff
			mapKey("<leader>gd", ":Gdiff<CR>")

			-- Git blame
			mapKey("<leader>gb", ":Git blame<CR>")

			-- Git add (stage) current file
			mapKey("<leader>ga", ":Git add %<CR>")

			-- Git add all (stage all changes)
			mapKey("<leader>gA", ":Git add .<CR>")

			-- Git commit (opens commit message buffer)
			mapKey("<leader>gc", function()
				vim.ui.input({ prompt = "Commit message: " }, function(msg)
					if msg then
						vim.cmd(string.format('Git commit -m "%s"', msg))
					end
				end)
			end)

			-- Git add all and commit (with prompt for commit message)
			mapKey("<leader>gac", function()
				vim.ui.input({ prompt = "Commit message: " }, function(msg)
					if msg then
						vim.cmd("Git add .")
						vim.cmd(string.format('Git commit -m "%s"', msg))
					end
				end)
			end)
		end,
	},
}
