return{
    "ThePrimeagen/vim-be-good",
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end
    };
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        config = function()
            vim.o.background = "dark"
            function ColorDefault(color)
                color = color or "gruvbox"
                vim.cmd.colorscheme(color)
            end

            ColorDefault()
        end
    };
}
