return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true, -- Close Neo-tree if it’s the last window
            popup_border_style = "rounded", -- Use rounded borders for the popup
            window = {
                width = 30, -- Adjust this value to change the width
                height = 15, -- Adjust this value to change the height
                -- auto_expand_width = true; -- expand the window when file exceeds the window width. does not work with position = "float"
                mappings = {
                    -- Your mappings here
                },
            },
            -- Additional configurations...
        })
    end,
}
