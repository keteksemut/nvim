return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {
            check_ts = true,                                 -- enable treesitter checking
            disable_filetype = { "TelescopePrompt", "vim" }, -- optional
        }
    end,
}
