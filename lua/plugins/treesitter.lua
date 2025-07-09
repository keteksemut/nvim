-- plugins/treesitter.lua
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = {"BufReadPost", "BufNewFile"},
    opts = {
        ensure_installed = {
            -- Shell / Scripting
            "bash",
            "powershell",
            -- Web
            "html",
            "css",
            "javascript",
            "typescript",
            "tsx",
            "vue",
            "json",
            "yaml",
            -- General Purpose
            "python",
            "go",
            "lua",
            "c",
            -- Markdown
            "markdown",
            "markdown_inline",
            -- Vim/Neovim
            "vim",
            "vimdoc",
            "query",
            "luadoc",
            "diff"
        },
        highlight = {enable = true, additional_vim_regex_highlighting = false,},
        indent = {enable = true},
        autotag = {enable = true}
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
