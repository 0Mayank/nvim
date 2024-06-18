return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    config = function()
      local opts = {}
      require('ibl').setup(opts)

      vim.keymap.set('n', '<leader>ti', vim.cmd.IBLToggle, { desc = '[T]oggle [I]ndent lines' })
    end,
  },
}
