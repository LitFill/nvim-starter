-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

---add desc to opts for set
---@param opts vim.api.keyset.keymap
---@param desc string
---@return vim.api.keyset.keymap
local d = function(opts, desc)
    opts.desc = desc
    return opts
end

-- Autocommands and keybindings for Agda files
local function agda_filetype()
    local keymap = vim.api.nvim_buf_set_keymap
    local opts = { noremap = true, silent = true }

    keymap(0, "n", "<leader>al", ":CornelisLoad<CR>", d(opts, "agda load"))
    keymap(0, "n", "<leader>ar", ":CornelisRefine<CR>", d(opts, "agda refine"))
    keymap(0, "n", "<leader>ad", ":CornelisMakeCase<CR>", d(opts, "agda make case"))
    keymap(0, "n", "<leader>a,", ":CornelisTypeContext<CR>", d(opts, "agda type context"))
    keymap(
        0,
        "n",
        "<leader>a.",
        ":CornelisTypeContextInfer<CR>",
        d(opts, "agda infered type context")
    )
    keymap(0, "n", "<leader>an", ":CornelisSolve<CR>", d(opts, "agda solve"))
    keymap(0, "n", "<leader>aa", ":CornelisAuto<CR>", d(opts, "agda auto"))
    keymap(0, "n", "gd", ":CornelisGoToDefinition<CR>", d(opts, "goto definition"))
    keymap(0, "n", "[/", ":CornelisPrevGoal<CR>", d(opts, "agda prev goal"))
    keymap(0, "n", "]/", ":CornelisNextGoal<CR>", d(opts, "agda next goal"))
    keymap(0, "n", "<C-A>", ":CornelisInc<CR>", d(opts, "agda inc"))
    keymap(0, "n", "<C-X>", ":CornelisDec<CR>", d(opts, "agda dec"))
end

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
    pattern = "*.agda",
    callback = agda_filetype,
})

vim.api.nvim_create_autocmd("QuitPre", {
    pattern = "*.agda",
    command = "CornelisCloseInfoWindows",
})
