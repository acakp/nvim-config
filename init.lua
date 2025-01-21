require("config.lazy")
require("mini.surround").setup()
require("mini.pairs").setup()
require("telescope.").setup()

-- for markdown syntax level rendering
vim.opt.conceallevel = 2

-- require("nvim-cmp")

-- Sync clipboard between OS and nvim
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
-- vim.api.nvim_set_option("clipboard", "unnamed")
-- enable line numbers
vim.wo.number = true
vim.wo.relativenumber = false
-- enable break indent
vim.opt.breakindent = true
-- case-INsensitive searching UNLESS \C or 1+ cap letters in search
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- show which line ur cursor is on
vim.opt.cursorline = true
-- sets how nvim will display certain whitespace characters
-- vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- minimal number of lines to keep above and below the cursor
vim.opt.scrolloff = 10
-- tab width and other tab tricks
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 0 
vim.opt.autoindent = true

-- KEYMAPS
-- clear search highlits on esc in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- bind j and k to move SCREEN lines
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
-- unmap s for surround add
vim.keymap.set('n', 's', '')
vim.keymap.set('v', 's', '')
-- run telescope with leader key
vim.keymap.set('n', '<leader>f', '<cmd>lua require("telescope.builtin").fd()<CR>', { desc = 'Open file picker'})
vim.keymap.set('n', '<leader>b', '<cmd>lua require("telescope.builtin").buffers()<CR>', { desc = 'Open buffer picker'})
vim.keymap.set('n', '<leader>g', '<cmd>lua require("telescope.builtin").live_grep()<CR>', { desc = 'Open live grep picker'})

-- AUTOCOMMANDS
-- highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('highlight-yank', {clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- GO
require("lspconfig").gopls.setup({})
