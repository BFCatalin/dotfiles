return {
  {
    'Zeioth/compiler.nvim',
    cmd = { 'CompilerOpen', 'CompilerToggleResults', 'CompilerRedo' },
    dependencies = { 'stevearc/overseer.nvim', 'nvim-telescope/telescope.nvim' },
    opts = {},
    keys = {
      {
        '<C-F7>',
        '<cmd>CompilerToggleResults<cr>',
        'Compiler toggle results',
        { silent = true, noremap = true },
      },
      {
        '<F6>',
        '<cmd>CompilerOpen<cr>',
        'Compiler open',
        { silent = true, noremap = true },
      },
      {
        '<C-b>',
        '<cmd>CompilerStop<cr>' .. '<cmd>CompilerRedo<cr>',
        'Compiler redo last action',
        { silent = true, noremap = true },
      },
    },
  },
  { -- The task runner we use
    'stevearc/overseer.nvim',
    commit = '6271cab7ccc4ca840faa93f54440ffae3a3918bd',
    cmd = { 'CompilerOpen', 'CompilerToggleResults', 'CompilerRedo' },
    opts = {
      task_list = {
        direction = 'bottom',
        min_height = 25,
        max_height = 25,
        default_detail = 1,
      },
    },
  },
}
