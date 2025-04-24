return {
  {
    '0Mayank/env-loader',
    lazy = false, -- Important: We need this to load on startup
    priority = 1000, -- High priority to load early
    config = function()
      require('env-loader').setup()
      -- Set to true to automatically load .nvimrc files without confirmation
      vim.g.nvimrc_trusted = true
    end,
  },
}
