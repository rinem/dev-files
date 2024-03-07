return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>hm", function() mark.add_file() end)
    vim.keymap.set("n", "<leader>hl", function() ui.toggle_quick_menu() end)
  end,
}

