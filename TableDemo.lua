#!/usr/local/bin/lua
require 'utils'
local fruits={'Apple','Orange','Pear'}
utils.print_table(fruits)
setmetatable(fruits,{_hello='world',__tostring=function(array)
    str=""
    for k,v in pairs(array) do
        str= str .. ',' .. v
    end
    return str
     end
})
utils.print_table(getmetatable(fruits))
print(fruits)

