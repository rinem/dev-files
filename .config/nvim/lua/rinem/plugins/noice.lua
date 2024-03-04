return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- Add LSP handler configuration here
    lsp = {
      hover = { enabled = false },
      signature = { enabled = false },
      handlers = {
        ["window/showMessage"] = function(err, method, params, client_id, bufnr, config)
          -- Handle the showMessage handler here if necessary
        end
      }
    }
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  }
}
