local function load_options()
   local options = {
      mouse = 'a',
   }

   for key, value in pairs(options) do
      vim.o[key] = value
   end
end

load_options()
