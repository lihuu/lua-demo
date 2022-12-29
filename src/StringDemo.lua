local myUtil = require('./util/init')
print(myUtil.isEmpty("3"))
print(myUtil.isEmpty(""))
print(myUtil.isEmpty(nil))

-- 单行字符串
local myString = "My String"
--
local myString1 = 'My Strin 1'
-- 多行字符串
local myStrin2 = [[Hello,THis 
world ""
]]

print(myStrin2)

print(string.upper(myString))

print(string.lower(myString))

-- 字符串的连接
print(myString .. myString1)

-- 计算字符串的长度
print(#"hello")

-- 重复字符串

print(string.rep("hello ", 3))

-- 字符串翻转

print(string.reverse("hello"))

print(string.lower("HELLO"))

print(string.upper("hello"))

-- 负号表示从最后开始
print(string.sub("hello", 2, -2))

