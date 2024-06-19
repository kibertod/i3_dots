return {
    "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function(_,opts)
        require("bufferline").setup
        {
            options = 
            {
                mode = "buffers",
                diagnostics = "coc",
                offsets = {{filetype = "NvimTree", text = "File Explorer" , text_align = "center"}},
            }
        }
    end,
    version = "*",
}
