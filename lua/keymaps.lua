-- leader key
vim.g.mapleader = ' '
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent=true}) -- disable space default behavior - silent to now show it in cmd' line

vim.keymap.set('n', 'x', '"_x') -- delete without svaing to buffer

-- completion 
-- vim.keymap.set("i", "'", "''<left>")
-- vim.keymap.set("i", "\"", "\"\"<left>")
vim.keymap.set("i", "(", "()<left>")
vim.keymap.set("i", "{", "{}<left>")
vim.keymap.set("i", "[", "[]<left>")

-- stay in indent mode
vim.keymap.set('v', '<', '<gv')
vim.keymap.set('v', '>', '>gv')

