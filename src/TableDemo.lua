#!/usr/local/bin/lua

require('utils')
local t = {10, 20, 30}
table.insert(t, 1, 5)

print(getmetatable(t))

local t1 = {}
setmetatable(t, t1)
print(getmetatable(t))

-- 连接成字符串打印输出
print(table.concat(t, ","))

-- utils.print_table(t)
--
--[[
local foo = function (x)
    return x*2
end
--print(foo(1))
--require 'utils'
local fruits={'Apple','Orange','Pear'}
utils.print_table(fruits)
setmetatable(fruits,{_hello='world',__tostring=function(array)
    local  str=""
    for _,v in pairs(array) do
        str= str .. ',' .. v
    end
    return str
end
})
utils.print_table(getmetatable(fruits))
print(fruits)
--]]

-- local a = {}
-- a['k'] = 10

-- utils.print_table(a)

-- print(a['k'])
-- #region
-- #region
--[[
local alph = {A='a',B='b',C='c'}
--print(alph.A)
alph['D']='d'
alph.E='e'
--utils.print_table(alph)
alph.E=nil
--print('after delete :')
--utils.print_table(alph)

local myString = "ABC"
--print(#myString)
--#region
--#region

local a = {}
for i=1,10 do
    a[i] = i
end
--utils.print_table(a)
--print(a[#a])
--print(a[1])
--#region
--
local t = {10,print,x=12,k='hi'}
for k,v in pairs(t) do
    print(k,v)
end
local t = {10,print,12,'hi'}

for k,v in ipairs(t) do
    print(k,v)
end
--]]

