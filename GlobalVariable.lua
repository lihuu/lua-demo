--print(_G)
--[[
--
--打印全部的全局变量表中的内容
for key, value in pairs(_G) do
    print(key)
    print(value)
end
--]]
--全局变量全部保存到一个名称为 _G 的表中
--_G._G 等价于_G
--
--全局的应该用大写的字母开头
function GlobalFunction()
    print("This is my first global functon")
end

print(_G.GlobalFunction)

_G.GlobalFunction()

print(_G)
print(_G._G)

--局部的变量不会放到_G表中
local function myLocalFunction()
    print("This is my local function")
end
myLocalFunction()

