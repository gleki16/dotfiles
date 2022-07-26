local packs = {
   {
      'folke/which-key.nvim',
      config = function()
         require('which-key').setup{}
      end
   },
   {
      'windwp/nvim-autopairs',
      config = function()
         require('nvim-autopairs').setup{}
      end
   },
   {
      'ellisonleao/gruvbox.nvim',
      config = function()
         vim.o.background = "light"
         vim.cmd([[colorscheme gruvbox]])
      end
   },
}

-- 自动安装 packer
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
   packer_bootstrap = fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
   vim.cmd [[packadd packer.nvim]]
end

-- 管理插件
return require('packer').startup(function(use)
      use 'wbthomason/packer.nvim' -- packer 自身

      for i, pack in ipairs(packs) do
         use(pack)
      end

      if packer_bootstrap then
         require('packer').sync()
      end
                                end)
