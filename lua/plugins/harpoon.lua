return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		event = "VeryLazy",

		config = function()
			local harpoon = require("harpoon")

			-- REQUIRED
			harpoon:setup()

			-- Set up keymaps
			local mapKey = require("utils.keyMapper").mapKey

			mapKey("<leader>a", function()
				harpoon:list():append()
			end)
			mapKey("<leader>s", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

			mapKey("<leader>1", function()
				harpoon:list():select(1)
			end)
			mapKey("<leader>2", function()
				harpoon:list():select(2)
			end)
			mapKey("<leader>3", function()
				harpoon:list():select(3)
			end)
			mapKey("<leader>4", function()
				harpoon:list():select(4)
			end)
			mapKey("<leader>5", function()
				harpoon:list():select(5)
			end)
			mapKey("<leader>6", function()
				harpoon:list():select(6)
			end)
			mapKey("<leader>7", function()
				harpoon:list():select(7)
			end)
			mapKey("<leader>8", function()
				harpoon:list():select(8)
			end)
			mapKey("<leader>9", function()
				harpoon:list():select(9)
			end)

			-- Toggle previous & next buffers stored within Harpoon list
			mapKey("<leader>q", function()
				harpoon:list():prev()
			end)
			mapKey("<leader>w", function()
				harpoon:list():next()
			end)
		end,
	},
}
