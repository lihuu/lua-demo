#!/usr/local/bin/lua

-- 以只读模式打开文件
local file = io.open("HelloWorld.lua", "r")
io.input(file)
local str = io.read()
print(str)
while (str ~= nil) do
    str = io.read()
    print(str)
end

io.close(file)

file = io.open("README.md", "a")
io.output(file)
io.write("#### lua Demo")
io.close(file)

-- file = io.open("utils.lua","r")

for line in io.lines("utils.lua") do print(line) end

file = io.open("utils.lua", "r")
print(file:read())
file:close()

