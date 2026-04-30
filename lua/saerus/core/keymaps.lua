vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymap
keymap.set("i", "qp", "<ESC>")
keymap.set("n", "<leader>cs", ":nohl<CR>")
keymap.set("n", "x", '"_x"')
keymap.set("n", "<S-R>", "<C-R>")
keymap.set("n", "<leader>sa", "ggVG")
keymap.set("n", "ra", ":%s/")

-- delete all after cursor
keymap.set("n", "dla", "d$")

-- visual mode
keymap.set("n", "<leader>wla", "v$")

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- split panes
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- move between panes
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>k", "<C-w>k")
keymap.set("n", "<leader>l", "<C-w>l")

keymap.set("n", "<leader>to", ":tabnew<CR>")
keymap.set("n", "<leader>tx", "tabclose<CR>")
keymap.set("n", "<leader>tn", ":tabn<CR>")
keymap.set("n", "<leader>tp", ":tabp<CR>")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- neo tree
keymap.set("n", "<leader>e", ":Neotree toggle float<CR>")

-- telescope
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")   -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")       -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")     -- list available help tags

keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")   -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>")  -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")    -- list current changes per file with diff preview ["gs" for git status]

keymap.set("n", "<leader>rs", ":LspRestart<CR>")                  -- mapping to restart lsp if necessary
