-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

-- convenient
set({ "i", "t" }, "jk", "<Esc>", { nowait = true, desc = "exit to normal" })
set("n", "<leader>qw", "<cmd>wq<CR>", { desc = "save and quit" })

-- using makefile
set("n", "<leader>mr", "<cmd>term make run<CR>", { desc = "(m)ake (r)un" })
set("n", "<leader>mb", "<cmd>term make build<CR>", { desc = "(m)ake (b)uild" })
set("n", "<leader>mqb", "<cmd>term make build<CR>a<CR>", { desc = "quick build" })

set("n", "<leader>pv", vim.cmd.Ex, { desc = "preview pwd" })

set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzz")
set("n", "N", "Nzz")

set({ "n", "v" }, "<leader>d", [["_d]])

-- set("n", "<C-k>"    , "<cmd>cnext<CR>zz")
-- set("n", "<C-j>"    , "<cmd>cprev<CR>zz")
-- set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- set("n", "<leader>j", "<cmd>lprev<CR>zz")

set(
    "n",
    "<leader>rw",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "(r)eplace (w)ord" }
)

set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent dir" })

set("n", "<leader>utr", "<cmd>TransparentToggle<CR>", { desc = "Toggle transparent background" })

set("t", "<C-q>", "<C-\\><C-n>", { nowait = true })
set("n", "<leader>ot", "<cmd>term<CR>a", { desc = "(o)pen (t)erminal" })

-- NeoGit
set("n", "<leader>gn", "<cmd>Neogit<CR>", { desc = "open NeoGit" })

-- Typst Preview
set("n", "<leader>tp", "<cmd>TypstPreviewToggle<CR>", { desc = "Toggle Typst Preview in browser" })
