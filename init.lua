--Load dir named config
require("config")

-- Use Leader + C for copying to clipboard in visual mode
vim.api.nvim_set_keymap("v", "<leader>c", '"+y', { noremap = true, silent = true })

print("Face the Fear, Build the Future.")
