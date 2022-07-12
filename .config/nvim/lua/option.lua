local options = {
   mouse = 'a',                 -- 允许使用鼠标
   scrolloff = 2,               -- 移动时光标上下保留2行
   sidescrolloff = 5,           -- 移动时光标左右保留5列
}

local function load_options()
   for key, value in pairs(options) do
      vim.o[key] = value
   end
end

load_options()
