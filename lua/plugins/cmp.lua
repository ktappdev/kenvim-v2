return {
  {
    "nvim-cmp",
    enabled = true,
    dependencies = {
      -- codeium
      {
        "Exafunction/codeium.nvim",
        enabled = false,
        cmd = "Codeium",
        build = ":Codeium Auth",
        opts = {},
      },
      {
        "supermaven-inc/supermaven-nvim",
        enabled = false,
        opts = {},
      },
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "codeium",
        group_index = 1,
        priority = 10,
      })
      table.insert(opts.sources, 2, {
        name = "supermaven",
        group_index = 1,
        priority = 99, -- Slightly lower priority than codeium
      })
    end,
  },
}
