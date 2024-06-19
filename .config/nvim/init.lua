vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

if vim.loader and vim.fn.has "nvim-0.9.1" == 1 then vim.loader.enable() end

vim.opt.history = 1000
vim.opt.termguicolors = true
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.cmd("set colorcolumn=100")

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>")
vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tg", "<cmd>TagbarToggle<CR>")
vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("n", ".", "<cmd>bn<CR>")
vim.keymap.set("n", ",", "<cmd>bp<CR>")
vim.keymap.set("n", "<leader>bc", "<cmd>BufferLineCloseLeft<CR><cmd>BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>bd", "<cmd>bd<CR><cmd>bn<CR>")
vim.keymap.set("n", "<C-t>", "<cmd>ToggleTerm<CR>")
vim.keymap.set("t", "<C-t>", "<cmd>ToggleTerm<CR>")

vim.keymap.set("n", "<leader><F5>", "<cmd>DapContinue<CR>")
vim.keymap.set("n", "<leader><F6>", "<cmd>DapStepOver<CR>")
vim.keymap.set("n", "<leader><F7>", "<cmd>DapStepInto<CR>")
vim.keymap.set("n", "<leader><F8>", "<cmd>DapStepOut<CR>")
vim.keymap.set("n", "<leader><F12>", "<cmd>DapTerminate<CR>")
vim.keymap.set("n", "<leader>Db", "<cmd>DapToggleBreakpoint<CR>")

vim.keymap.set("n", "<leader>Dt", "<cmd>lua require('dapui').toggle()<CR>")
vim.keymap.set("n", "<leader>Do", "<cmd>lua require('dapui').open()<CR>")
vim.keymap.set("n", "<leader>Dc", "<cmd>lua require('dapui').close()<CR>")

vim.keymap.set("n", "<leader>De", function()
    vim.ui.input({prompt = "Evaluate Expression: "},
                 function(input) require("dapui").eval(input) end)
end)

vim.keymap.set("n", "<leader>DE", "<cmd>lua require('dapui').eval()<CR>")

require("user.lazy")

vim.cmd(":set nowrap")
