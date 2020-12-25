local inspect = require('inspect')
local fun     = require('fun')

require "my-songs"

-- compose
function print_inspect(x)
  print(inspect(x))
end

fun.each(print_inspect, songs)

