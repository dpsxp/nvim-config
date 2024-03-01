return {
  -- "mfussenegger/nvim-lint",
  -- opts = {
  --   linters_by_ft = {
  --     typescript = { 'tslint' },
  --     javascript = { 'eslint' }
  --   }
  -- },
  -- config = function(_, opts)
  --   vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  --     callback = function()
  --       require("lint").try_lint()
  --     end,
  --   })
  -- end,
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
      {
        -- Customize or remove this keymap to your liking
        "<leader>f",
        function()
          require("conform").format({ async = true, lsp_fallback = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
    opts = {
      -- Define your formatters
      formatters_by_ft = {
        javascript = { { "prettier", "prettierd" } },
        lua = { "stylua" },
      },
      -- Set up format-on-save
      format_on_save = { timeout_ms = 500, lsp_fallback = true },
    },
  }
}
