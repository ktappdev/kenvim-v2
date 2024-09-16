return {
  {
    "laytan/tailwind-sorter.nvim",
    lazy = true,
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-lua/plenary.nvim" },
    build = "cd formatter && npm ci && npm run build",
    config = true,
  },
}
