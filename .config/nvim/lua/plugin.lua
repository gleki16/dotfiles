local plugins = {
   require('init-which-key'),      -- 显示按键绑定
   require('init-nvim-autopairs'), -- 括号自动配对
   require('init-gruvbox'),        -- gruvbox 主题
}

local function load_plugins()
   -- 自动安装 packer
   local fn = vim.fn
   local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
   if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system({'git', 'clone', '--depth=1', 'https://github.com/wbthomason/packer.nvim', install_path})
      vim.cmd [[packadd packer.nvim]]
   end

   -- 管理插件
   require('packer').startup(function(use)
         use 'wbthomason/packer.nvim' -- packer 自身

         for i, plugin in ipairs(plugins) do
            use(plugin)
         end

         if packer_bootstrap then
            require('packer').sync()
         end
                            end)
end

load_plugins()
