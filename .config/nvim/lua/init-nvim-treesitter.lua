return {
   'nvim-treesitter/nvim-treesitter',
   config = function()
      require('nvim-treesitter.configs').setup {
         ensure_installed = { "bash", "lua", "python" },
         auto_install = true,
         highlight = {enable = true},
                                               }
   end
}
