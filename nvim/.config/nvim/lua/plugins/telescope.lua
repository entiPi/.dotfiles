return {
   'nvim-telescope/telescope.nvim',
   dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-live-grep-args.nvim',
   },
   config = function(_, opts)
      require('telescope').setup{
         defaults = {
            path_display = {'truncate'},
            sorting_strategy = 'descending',
         },
      }
   end
}
