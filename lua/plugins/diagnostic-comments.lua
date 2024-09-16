return {
  {

    "ktappdev/diagnostic-comments.nvim",
    enabled = false,
    -- main = "diagnostic_comments",
    config = function()
      require("diagnostic-comments").setup({
        comment_style = "above", -- or "inline"
        keymap = "<leader>dc", -- customize this to your preferred key mapping
        use_virtual_text = false, -- toggle between virtual and actual comments
      })
    end,
  },
}
