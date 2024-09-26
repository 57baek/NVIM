-- Options Settings

local opt = vim.opt

-- tab/indent
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true -- auto indentation
opt.wrap = false -- auto enter to the next line if long

-- search
opt.incsearch = true
opt.ignorecase = true -- ignore capitalization
opt.smartcase = true -- care when I use capitalization

-- visual
opt.number = true
opt.relativenumber = false
opt.termguicolors = true
opt.signcolumn = "yes" -- vertical line on the left side near number

-- etc
opt.encoding = "UTF-8"
opt.cmdheight = 1 -- limit the lines of command
opt.scrolloff = 10 -- start scrolling to the next part when reach to the n lines from bottom or top
opt.mouse:append("a")
