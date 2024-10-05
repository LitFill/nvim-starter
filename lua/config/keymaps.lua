-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

set({ "i", "t" }, "jk", "<Esc>", { nowait = true, desc = "exit to normal" })
set("n", "<leader>mr", "<cmd>term make run", { desc = "(m)ake (r)un" })
set("n", "<leader>mb", "<cmd>term make build", { desc = "(m)ake (b)uild" })

set("n", "<leader>pv", vim.cmd.Ex, { desc = "preview pwd" })

set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

set("n", "J", "mzJ`z")
set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzz")
set("n", "N", "Nzz")

set({ "n", "v" }, "<leader>d", [["_d]])

-- set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- set("n", "<leader>j", "<cmd>lprev<CR>zz")

set("n", "<leader>rw", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "(r)eplace (w)ord" })

set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent dir" })

set("n", "<leader>utr", "<cmd>TransparentToggle<CR>", { desc = "Toggle transparent background" })

set("t", "<C-q>", "<C-\\><C-n>", { nowait = true })
set("n", "<leader>ot", "<cmd>term<CR>", { desc = "(o)pen (t)erminal" })
