return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
        require("toggleterm").setup{
            -- open_mapping = [[<leader>t]],
        }

        vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
    end

}
