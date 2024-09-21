-- Keymap Settings
-- <CR> = ENTER

local mapKey = require("utils.keyMapper").mapKey

-- neotree toggle
mapKey("<leader>e", ":Neotree toggle<CR>")

-- pane navigation
mapKey("<C-h>", "<C-w>h") -- left
mapKey("<C-l>", "<C-w>l") -- right
mapKey("<C-k>", "<C-w>k") -- up
mapKey("<C-j>", "<C-w>j") -- down

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

