local options = {
   mouse = 'a',
}

local function load_options()
   for key, value in pairs(options) do
      vim.o[key] = value
   end
end

load_options()
