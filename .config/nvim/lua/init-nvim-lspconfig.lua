return {
   'neovim/nvim-lspconfig',
   config = function()
      require('lspconfig').bashls.setup{}
      require('lspconfig').pylsp.setup{}
   end
}
