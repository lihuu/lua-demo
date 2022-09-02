#!/usr/local/bin/lua

local programLanguages = {"Lua", "Java"}

for k, v in ipairs(programLanguages) do
  print(k, v)
end

local array = {}
array[0] = "Hello"
array[#array + 1] = "World"

for _, value in pairs(array) do
  print(value)
end

local index, value = next(programLanguages)
print('index: ' .. index .. ", value: " .. value)

index, value = next(programLanguages, 1)
print('index: ' .. index .. ", value: " .. value)

index, value = next(programLanguages, 2)
if index ~= nil or value ~= nil then
  print('index: ' .. index .. ", value: " .. value)
else
  print("index is nil or value is nil")
end

