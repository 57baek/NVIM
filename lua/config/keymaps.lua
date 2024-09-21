-- Keymap Settings
-- <CR> = ENTER

-- Keymap Settings
local mapKey = require("utils.keyMapper").mapKey

-- Map <leader>e to toggle
mapKey("<leader>e", ":Neotree toggle<CR>")

-- Neo-tree width adjustment keymaps
mapKey("<C-=>", function()
	if _G.is_neotree_window() then
		_G.change_neotree_width(3)
	end
end)

mapKey("<C-->", function()
	if _G.is_neotree_window() then
		_G.change_neotree_width(-3)
	end
end)

-- pane navigation
mapKey("<leader><Left>", "<C-w>h") -- left
mapKey("<leader><Right>", "<C-w>l") -- right
mapKey("<leader><Up>", "<C-w>k") -- up
mapKey("<leader><Down>", "<C-w>j") -- down

-- clear search highlights when using /
mapKey("<leader>h", ":nohlsearch<CR>")

-- back to the nvim lobby menu
mapKey("<leader>w", ":Ex<CR>")

-- fuzzy finder
mapKey("<leader>ff", ":Telescope find_files<CR>")

-- live grep finder
mapKey("<leader>fd", ":Telescope live_grep<CR>")

-- git file finder
mapKey("<leader>fg", ":Telescope git_files<CR>")

-- indentation
mapKey("<", "<gv", "v")
mapKey(">", ">gv", "v")

--- run current python file with leader+r
mapKey("<leader>r", ":w<CR>:!python3 %<CR>")
