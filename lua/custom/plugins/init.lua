-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- {
  --   'mrcjkb/rustaceanvim',
  --   version = '^5', -- Recommended
  --   lazy = false, -- This plugin is already lazy
  -- },

  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },

  {
    'nvim-treesitter/nvim-treesitter-context',
    config = function()
      local opts = { multiline_threshold = 1, max_lines = 3 }
      require('treesitter-context').setup(opts)

      vim.keymap.set('n', '<leader>tc', '<cmd>TSContextToggle<cr>', { desc = '[T]oggle [C]ontex' })
    end,
  },

  {
    'fei6409/log-highlight.nvim',
    config = function()
      require('log-highlight').setup {}
    end,
  },

  {
    'kevinhwang91/nvim-bqf',
    ft = 'qf',
  },

  {
    'junegunn/fzf',
    run = function()
      vim.fn['fzf#install']()
    end,
  },

  {
    'stevearc/quicker.nvim',
    lazy = false,
    event = 'FileType qf',
    ---@module "quicker"
    ---@type quicker.SetupOptions
    opts = {},
  },

  'tpope/vim-fugitive',

  {
    'sindrets/diffview.nvim',
    lazy = false,
    opts = {
      view = {
        merge_tool = {
          -- Config for conflicted files in diff views during a merge or rebase.
          layout = 'diff3_vertical',
        },
      },
      file_panel = {
        listing_style = 'list',
      },
    },
  },
}
