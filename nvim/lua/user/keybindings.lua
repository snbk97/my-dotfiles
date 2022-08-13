local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--------------------------------------------------------------------------------
-- General keyBindings --
--------------------------------------------------------------------------------

-- basic keybindings
map("n", ":q", ":q!")
map("n", "<F12>", ":exec (&bg == 'light' ? 'set bg=dark' : 'set bg=light')<CR>", { silent = true }) --quick background switch
map("n", "<leader>q", "<cmd>Sayonara<CR>", { silent = true }) -- sane buffer quit
map("n", "<leader>w", ":w!<cr>") -- fast save
map("n", "<C-Z>", "u") -- undo
map("n", "<C-Y>", "<C-R>") -- redo

-- window remap
map("n", "<C-j>",  "<C-W>j", { silent = true })
map("n", "<C-k>",  "<C-W>k", { silent = true })
map("n", "<C-h>",  "<C-W>h", { silent = true })
map("n", "<C-l>",  "<C-W>l", { silent = true })

-- buffer switching
map("n", "<C-z>", ":bprev<CR>") -- switch to next buffer
map("n", "<C-x>", ":bnext<CR>") -- switch to prev buffer

-- LSP
map("n", "<leader>j", "<cmd> vim.lsp.buf.formatting()<CR>")
--------------------------------------------------------------------------------
-- Plugin keyBindings --
--------------------------------------------------------------------------------

-- NvimTree Toggle
map("n", "<C-\\>", ":NvimTreeToggle<CR>")

-- Telescope
-- map("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- moved to which key
map("n", "<leader>bb", "<cmd>Telescope buffers<CR>")
map("n", "<leader>sm", "<cmd>Telescope symbols<CR>")
map("n", "<leader>gst", "<cmd>Telescope git_status<CR>")
map("n", "<leader>gsh", "<cmd>Telescope git_stash<CR>")
map("n", "<leader>gsb", "<cmd>Telescope git_branches<CR>")

-- Lazygit
map("n", "<leader>gg", "<cmd>LazyGit<CR>")

-- ToggleTerm
map("n", "<leader>t", "<cmd>ToggleTerm<CR>")


