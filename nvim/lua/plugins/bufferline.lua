return {
    {
        'akinsho/bufferline.nvim', 
        version = "*", 
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function ()
            vim.opt.termguicolors = true
            vim.keymap.set('n', '<tab>', function()
                                            require("bufferline.commands").cycle(1)
                                         end, { desc = "buffer goto next" })
            vim.keymap.set('n', '<S-tab>', function()
                                            require("bufferline.commands").cycle(-1)
                                           end, { desc = "buffer goto next" })
            vim.keymap.set('n', '<leader>x',':bdelete<CR>', { desc = "close buffer" })
            require("bufferline").setup {
                options = {
                    offsets = {
                        { filetype = "NvimTree", text = "Explorer", padding = 1 }
                    },
                },
            }
        end
    },
}

