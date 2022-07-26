local keymaps = {}

keymaps[''] = {                 -- 所有模式
   ['<c-b>'] = '<left>',
   ['<c-f>'] = '<right>',
   ['<c-a>'] = '<home>',
   ['<c-e>'] = '<end>',
   ['<c-n>'] = '<down>',
   ['<c-p>'] = '<up>',
}

keymaps['n'] = {                -- 普通模式
   ['<leader>xc'] = ':q<cr>',
   ['<leader>xs'] = ':w<cr>',
   [';'] = ':',
}

local function load_keymaps()
   vim.g.mapleader = ' '        -- 空格键作为 leader 键

   for mode, mode_map in pairs(keymaps) do
      for key, value in pairs(mode_map) do
         vim.api.nvim_set_keymap(mode, key, value, {noremap = true, silent = true})
      end
   end
end

load_keymaps()
