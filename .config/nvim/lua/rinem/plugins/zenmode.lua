return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    dependencies = { "folke/twilight.nvim" },
    opts = {},
    keys = {
      { "<leader>zz", "<cmd>ZenMode<cr>", desc = "Zen Mode" }
    },
  },
}
