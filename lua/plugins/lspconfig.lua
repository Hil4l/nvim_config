return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require("lspconfig")
        
        -- clangd
        lspconfig.clangd.setup({})

        -- pylsp
        -- lspconfig.pylsp.setup({})

        -- gopls
        -- TODO
        
        -- diagnostics display
        vim.diagnostic.config({
            virtual_text = {
                prefix = "", 
                spacing = 2,
            },
            signs = true,
            underline = true,
            update_in_insert = false,
            severity_sort = true,
        })
        inlay_hints = {
            enabled = true,
        }
    end
}

