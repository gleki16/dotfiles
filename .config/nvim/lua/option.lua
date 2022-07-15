local options = {
   mouse = 'a',                 -- 允许使用鼠标
   scrolloff = 2,               -- 移动时光标上下保留2行
   sidescrolloff = 5,           -- 移动时光标左右保留5列
   number = true,               -- 行号
   relativenumber = true,       -- 相对行号
   ignorecase = true,           -- 搜索忽略大小写
   smartcase = true,            -- 智能匹配搜索大小写
   smartindent = true,          -- 自动缩进
   swapfile = false,            -- 不创建交换文件
   undofile = true,             -- 允许撤销操作
   cursorline = true,           -- 高亮当前行
   wrap = false,                -- 不折行
}

local function load_options()
   for key, value in pairs(options) do
      vim.o[key] = value
   end
end

load_options()
