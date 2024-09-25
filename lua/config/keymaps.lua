-- Keymap Settings
-- <CR> = ENTER

-- Keymap Settings
local mapKey = require("utils.keyMapper").mapKey

-- Function to resize the split
function ResizeSplit(direction)
	if direction == "increase" then
		vim.cmd("vertical resize +3") -- Increase the width by 3
	elseif direction == "decrease" then
		vim.cmd("vertical resize -3") -- Decrease the width by 3
	end
end

-- Key mapping to decrease the size of the right split
mapKey("<C-=>", ":lua ResizeSplit('increase')<CR>")

-- Key mapping to increase the size of the right split
mapKey("<C-->", ":lua ResizeSplit('decrease')<CR>")

-- Map <leader>e to toggle
mapKey("<leader>e", ":Neotree toggle<CR>")

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

-- Use Leader + C for copying to clipboard in visual mode
vim.api.nvim_set_keymap("v", "<leader>c", '"+y', { noremap = true, silent = true })

-- Function to run current Python file in IPython
function RunPythonInIPython()
	local current_file = vim.fn.expand("%:p") -- Get the full path of the current file
	vim.cmd("rightbelow vsplit") -- Create a vertical split
	vim.cmd("term ipython -i " .. current_file) -- Open IPython with the current file
end
-- Create a command for it
vim.api.nvim_create_user_command("RunPythonInIPython", RunPythonInIPython, {})
-- Key mapping to run the current Python file in IPython
vim.api.nvim_set_keymap("n", "<leader>re", ":RunPythonInIPython<CR>", { noremap = true, silent = true })
