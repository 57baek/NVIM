return {

    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          -- add parsing library that you will use
          ensure_installed = { "lua", "python" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end

}
