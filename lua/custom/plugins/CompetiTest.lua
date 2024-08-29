return {
  'xeluxee/competitest.nvim',
  dependencies = 'MunifTanjim/nui.nvim',
  config = function()
    require('competitest').setup {
      compile_directory = 'out',

      view_output_diff = true,

      testcases_directory = 'testcases',

      received_files_extension = 'py',
    }

    vim.keymap.set('n', '<leader>os', '<cmd>CompetiTest show_ui<cr>', { desc = 'C[O]mpiTest [S]how UI' })

    vim.keymap.set('n', '<leader>or', '<cmd>CompetiTest run<cr>', { desc = 'C[O]mpiTest [R]un' })
    vim.keymap.set('n', '<leader>oR', '<cmd>CompetiTest run_no_compile<cr>', { desc = 'C[O]mpiTest [*R]un without recompiling' })

    vim.keymap.set('n', '<leader>odt', '<cmd>CompetiTest receive testcases<cr>', { desc = 'C[O]mpiTest [D]ownload [T]estcases' })
    vim.keymap.set('n', '<leader>odp', '<cmd>CompetiTest receive problem<cr>', { desc = 'C[O]mpiTest [D]ownload [P]roblem' })
    vim.keymap.set('n', '<leader>odc', '<cmd>CompetiTest receive contest<cr>', { desc = 'C[O]mpiTest [D]ownload [C]ontest' })

    vim.keymap.set('n', '<leader>oa', '<cmd>CompetiTest add_testcase<cr>', { desc = 'C[O]mpiTest [A]dd Testcase' })
    vim.keymap.set('n', '<leader>oe', '<cmd>CompetiTest edit_testcase<cr>', { desc = 'C[O]mpiTest [E]dit Testcase' })
    vim.keymap.set('n', '<leader>od', '<cmd>CompetiTest delete_testcase<cr>', { desc = 'C[O]mpiTest [D]elete Testcase' })

    vim.keymap.set(
      'n',
      '<leader>ocs',
      '<cmd>CompetiTest convert singlefile_to_files<cr>',
      { desc = 'C[O]mpiTest [C]onvert testcase from [S]ingle file to multiple files' }
    )
    vim.keymap.set(
      'n',
      '<leader>ocm',
      '<cmd>CompetiTest convert files_to_singlefile<cr>',
      { desc = 'C[O]mpiTest [C]onvert testcases from [M]ultiple files to single file' }
    )
    vim.keymap.set(
      'n',
      '<leader>oct',
      '<cmd>CompetiTest convert auto<cr>',
      { desc = 'C[O]mpiTest [C]onvert [T]oggle between single and multiple files testcase storage' }
    )
  end,
}
