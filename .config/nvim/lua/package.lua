-- 自动下载 packers.nvim
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
   packer_bootstrap = fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup(function(use)
      -- 有意思的是，packer可以用自己管理自己。
      use 'wbthomason/packer.nvim'

      -- use 'tpope/vim-sensible'
      -- your plugins here

      if packer_bootstrap then
         require('packer').sync()
      end
                         end)
