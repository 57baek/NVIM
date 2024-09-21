-- Keymap Settings
-- <CR> = ENTER

local mapKey = require("utils.keyMapper").mapKey

-- neotree toggle
mapKey('<leader>e', ':Neotree toggle<CR>')

-- pane navigation
mapKey('<C-h>', '<C-w>h') -- left
mapKey('<C-l>', '<C-w>l') -- right
mapKey('<C-k>', '<C-w>k') -- up
mapKey('<C-j>', '<C-w>j') -- down

-- clear search highlights
mapKey('<leader>h', ':nohlsearch<CR>')

-- back to the nvim lobby menu
mapKey('<leader>w', ':Ex<CR>')

-- fuzzyfinder
mapKey('','::<CR>')

-- live grep
