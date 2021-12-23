local myUtil = require('./util/init')
print(myUtil.isEmpty("3"))
print(myUtil.isEmpty(""))
print(myUtil.isEmpty(nil))

--单行字符串
local myString = "My String"
--
local myString1 = 'My Strin 1'
--多行字符串
local myStrin2 = [[Hello,THis 
world ""
]]

print(myStrin2)

print(string.upper(myString))

print(string.lower(myString))

--字符串的连接
print(myString .. myString1)
