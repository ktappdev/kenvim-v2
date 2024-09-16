-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- require("telekasten").setup({
--   home = vim.fn.expand("~/developer/notes/notes"), -- Put the name of your notes directory here
-- })
require("tailwind-sorter").setup({
  on_save_pattern = { "*.html", "*.jsx", "*.tsx" },
})
-- require("go").setup()
-- require("undotree").setup()
-- require("colorizer").setup({})
