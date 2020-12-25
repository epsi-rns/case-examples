local inspect = require('inspect')

function normalize(tags)
  if type(tags) == 'table' then
    local acc = {}

    function add_array(new)
      acc[#acc + 1] = new
    end

    each(add_array, tags)

    return acc
  end
  
  return tags
end

function print_inspect(tags)
  print(inspect(normalize(tags)))
end

-- https://ardoris.wordpress.com/2008/08/10/lua-merge-two-tables-awesome3-rc2-config/

function join_tables(t1, t2)
  for k,v in ipairs(t2) do table.insert(t1, v) end return t1
end
