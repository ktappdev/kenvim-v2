return {
  {
    "nvim-cmp",
    dependencies = {
      -- codeium
      {
        "Exafunction/codeium.nvim",
        cmd = "Codeium",
        build = ":Codeium Auth",
        opts = {},
      },
      {
        "supermaven-inc/supermaven-nvim",
        -- config = function()
        -- 	require("supermaven-nvim").setup({})
        -- end,
        opts = {},
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "codeium",
        group_index = 1,
        priority = 100,
      })
      table.insert(opts.sources, 2, {
        name = "supermaven",
        group_index = 1,
        priority = 99, -- Slightly lower priority than codeium
      })
    end,
  },
}
