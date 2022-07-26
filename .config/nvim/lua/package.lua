-- 自动下载 packers.nvim
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
   fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- 管理插件
return require('packer').startup(function(use)
      use 'wbthomason/packer.nvim'
                                end)
