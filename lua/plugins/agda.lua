-- Installation
-- Make sure you have [`stack`](https://docs.haskellstack.org/en/stable/install_and_upgrade/) on your PATH!

return {
    {
        "kana/vim-textobj-user",
        lazy = false, -- This plugin is essential and should load immediately
    },
    {
        "neovimhaskell/nvim-hs.vim",
        lazy = false, -- This plugin is essential and should load immediately
    },
    {
        "isovector/cornelis",
        build = "stack build", -- Ensures `stack build` is run after installation
        lazy = false, -- This plugin is essential and should load immediately
    },
}
