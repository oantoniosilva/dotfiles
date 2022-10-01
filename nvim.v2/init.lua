require('user.base')
require('user.highlights')
require('user.maps')
require('user.plugins')

local has = vim.fn.has
local is_unixos = has "unixos"
local is_win = has "win32"

if is_unixos then
  require('user.unixos')
end
if is_win then
  require('user.windows')
end
