function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

--------------------------------------------------------------------------------
-- General keyBindings --
--------------------------------------------------------------------------------

-- basic keybinding
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
--map("n", "<C-Tab>", ":bnext<CR>") -- switch to next buffer
--map("n", "C-S-Tab>", ":bprev<CR>") -- switch to prev buffer

map("n", "<C-z>", ":bprev<CR>") -- switch to next buffer
map("n", "<C-x>", ":bnext<CR>") -- switch to prev buffer


--------------------------------------------------------------------------------
-- Plugin keyBindings --
--------------------------------------------------------------------------------

-- NvimTree Toggle
map("n", "<C-\\>", ":NvimTreeToggle<CR>")

-- Comment
-- map("n", "<leader>c", "gcc", { silent = true })


