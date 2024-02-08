-- Func: Search for word currently under the cursor

local function grepWord()
	require('telescope.builtin').grep_string({ search = vim.fn.expand("<cword>") })
end

_G.grepWord = grepWord

-- Func: Load Telescope FZF if installed

pcall(require('telescope').load_extension, 'fzf')

-- Extract Telescope builtin Func

local builtin = require("telescope.builtin")

-- Register categories with Which-Key

require('which-key').register({
	['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
	['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
	['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
})

------------------------------------------------------------------------
-- Keymaps
------------------------------------------------------------------------

-- General

vim.keymap.set('n', '<leader>q', function() vim.cmd('q') end, { desc = ":[q]uit" })
vim.keymap.set('n', '<leader>Q', function() vim.cmd('q!') end, { desc = "Quit [F]orce" })
vim.keymap.set('n', '<leader>w', function() vim.cmd('w') end, { desc = "Write" })
vim.keymap.set('n', '<leader>W', function() vim.cmd('w!') end, { desc = "Write [F]orce" })
vim.keymap.set('n', '<leader>e', function() vim.cmd('e') end, { desc = "Edit" })
vim.keymap.set('n', '<leader>E', function() vim.cmd('E') end, { desc = ":[E]xplorer" })
-- toggle nvim tree
vim.keymap.set('n', '<C-n>', '<cmd>:NvimTreeToggle<cr>', { desc = "Toggle [N]vimTree" })

-- Search

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = "[S]earch [H]elp" })
vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = "[S]earch [G]rep" })
vim.keymap.set('n', '<leader>sr', builtin.oldfiles, { desc = "[S]earch [R]ecently opened files" })
vim.keymap.set('n', '<leader>sw', grepWord, { desc = "Grep Word" })
vim.keymap.set('n', '<leader>sn', function() vim.cmd('enew') end, { desc = "New File" })
vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = "[S]earch [B]uffers" })

-- Git

vim.keymap.set('n', '<leader>go', function() vim.cmd(':LazyGit') end, { desc = "Lazy[G]it [O]pen" })
vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = "Search [G]it [F]iles" })

-- Code

vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format() end, { desc = "[C]ode [F]ormat" })
vim.keymap.set('n', '<leader>ch', function() vim.lsp.buf.hover() end, { desc = "[C]ode [H]over information" })
vim.keymap.set('n', '<leader>cd', function() vim.lsp.buf.definition() end, { desc = "[C]ode [D]efinition" })
vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, { desc = "[C]ode [A]ctions" })
vim.keymap.set('n', '<leader>cr', function() vim.lsp.buf.references() end, { desc = "[C]ode [R]eferences" })
