#!/usr/local/bin/lua

local programLanguages = {"Lua","Java"}

for k,v in ipairs(programLanguages) do
    print(k,v)
end

local array = {}
array[0]="Hello"
array[#array+1] = "World"

for _,value in pairs(array) do
    print(value)
end
