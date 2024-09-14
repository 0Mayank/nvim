return {
  'xeluxee/competitest.nvim',
  dependencies = 'MunifTanjim/nui.nvim',
  opts = {
    compile_directory = 'out',

    view_output_diff = true,

    testcases_directory = 'testcases',

    received_files_extension = 'py',
  },
  keys = {
    { '<leader>os', '<cmd>CompetiTest show_ui<cr>', desc = 'C[O]mpiTest [S]how UI' },

    { '<leader>or', '<cmd>CompetiTest run<cr>', desc = 'C[O]mpiTest [R]un' },
    { '<leader>oR', '<cmd>CompetiTest run_no_compile<cr>', desc = 'C[O]mpiTest [*R]un without recompiling' },

    { '<leader>odt', '<cmd>CompetiTest receive testcases<cr>', desc = 'C[O]mpiTest [D]ownload [T]estcases' },
    { '<leader>odp', '<cmd>CompetiTest receive problem<cr>', desc = 'C[O]mpiTest [D]ownload [P]roblem' },
    { '<leader>odc', '<cmd>CompetiTest receive contest<cr>', desc = 'C[O]mpiTest [D]ownload [C]ontest' },

    { '<leader>oa', '<cmd>CompetiTest add_testcase<cr>', desc = 'C[O]mpiTest [A]dd Testcase' },
    { '<leader>oe', '<cmd>CompetiTest edit_testcase<cr>', desc = 'C[O]mpiTest [E]dit Testcase' },
    { '<leader>od', '<cmd>CompetiTest delete_testcase<cr>', desc = 'C[O]mpiTest [D]elete Testcase' },

    {
      '<leader>ocs',
      '<cmd>CompetiTest convert singlefile_to_files<cr>',
      desc = 'C[O]mpiTest [C]onvert testcase from [S]ingle file to multiple files',
    },
    {
      '<leader>ocm',
      '<cmd>CompetiTest convert files_to_singlefile<cr>',
      desc = 'C[O]mpiTest [C]onvert testcases from [M]ultiple files to single file',
    },
    {
      '<leader>oct',
      '<cmd>CompetiTest convert auto<cr>',
      desc = 'C[O]mpiTest [C]onvert [T]oggle between single and multiple files testcase storage',
    },
  },
}
