-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.lsp.inlay_hint.enable()
-- keymaps.lua
local map = vim.api.nvim_set_keymap
local builtin = require("telescope.builtin")

vim.api.nvim_set_keymap("n", "gl", "$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gh", "^", { noremap = true, silent = true })
-- remove the highlight asfter a search
--
vim.keymap.set("n", "<leader>cp", "", { noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<leader>cp",
  ':let @+ = expand("%:p")<CR>:echo "Copied: " .. expand("%:p")<CR>',
  { noremap = true, silent = true }
)
-- keybinds for prompting with groq
-- vim.keymap.set("n", "<leader>,", function() require("llm").prompt({ replace = false, service = "groq" }) end, { desc = "Prompt with groq" })
-- vim.keymap.set("v", "<leader>,", function() require("llm").prompt({ replace = false, service = "groq" }) end, { desc = "Prompt with groq" })
-- vim.keymap.set("v", "<leader>.", function() require("llm").prompt({ replace = true, service = "groq" }) end, { desc = "Prompt while replacing with groq" }))
-- Shortcut for searching your neovim configuration files
vim.keymap.set("n", "<leader>se", function()
  builtin.find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Search neovim environment" })

vim.keymap.set("n", "q", "<cmd>:q<CR>")
-- vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set("n", "crl", ":%s/log\\.Println\\(.*\\)//gc<cr>", { desc = "Clear all log.Println" })
vim.keymap.set("n", "crf", ":%s/fmt\\.Println\\(.*\\)//gc<cr>", { desc = "Clear all fmt.Println" })

-- vim.keymap.set('x', '<leader>cs', '<cmd>:CodeSnap<CR>', { desc = 'Code Snap to clipboard' })
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- Diagnostic keymaps

vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Extra easy to find keymaps
-- vim.keymap.set('n', '<leader>sc', '<cmd>Telescope colorscheme<cr>', { desc = '[S]earch [C]olorscheme with preview' })
vim.keymap.set("i", "jj", "<esc> :wa<cr>")
vim.keymap.set("i", "jk", "<esc>")

vim.keymap.set("n", "<leader>U", vim.cmd.UndotreeToggle, { desc = "Undotree" })
vim.keymap.set("n", "<leader>cw", '<cmd>lua require("treesj").toggle()<cr>', { desc = "Toggle code wrap" })

--
-- sort tailwind classes
-- vim.keymap.set("n", "<leader>ct", ":TailwindSort<CR>", { noremap = true, silent = true, desc = "Tailwind Sort" })
-- vim.keymap.set(
--   "n",
--   "<leader>cx",
--   ":TailwindSortOnSaveToggle<CR>",
--   { noremap = true, silent = true, desc = "Tailwind Sort on save toggle" }
-- )
--
--
--
vim.keymap.set("n", "<leader>i", function()
  require("llm").create_llm_md()
end, { desc = "Create llm.md" })

-- keybinds for prompting with groq
-- vim.keymap.set("n", "<leader>a", function()
--   require("llm").prompt({ replace = false, service = "groq" })
-- end, { desc = "Prompt with groq" })
-- vim.keymap.set("v", "<leader>a", function()
--   require("llm").prompt({ replace = false, service = "groq" })
-- end, { desc = "Prompt with groq" })
-- vim.keymap.set("v", "<leader>a", function()
--   require("llm").prompt({ replace = true, service = "groq" })
-- end, { desc = "Prompt while replacing with groq" })
