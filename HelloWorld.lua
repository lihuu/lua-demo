#!/usr/local/bin/lua
-- 这个是单行的注释
--[[
--
--这里的是多行的注释
--
--]]
print("hello,world")

--默认的情况下变量总是全局的，变量名的规则和其他的编程语言是一样的，另外注意不要使用lua的保留关键字
b=10
print(b)

--删除变量值将变量设置为nil

b=nil
print(b)

--lua有8个基本的数据类型，nil boolean number string userdata function thread table 
--注意type函数的返回值是string类型
print(type("hello"))

print(type (10))

print(type (print))

print(type(true))

print(type (nil) )

--table 类似于java中的HashMap

tab1 = {name="silent",age=1}
print(tab1)
print(pairs)

--这个是for循环的格式, 这个真的有脚本语言的味道了，还有for循环的输出好像并不是按照顺序的
for k,v in pairs(tab1) do
    print(k .. "-" .. v)
end

function print_table(t)
    for k,v in pairs(t) do
        print(k .. ":" .. v)
    end
end

--将对应的值设置为nil就表示删除这个值了
tab1.name=nil
for k,v in pairs(tab1) do
    print(k .. "-" .. v)
end

--boolean 类型的例子
isTrue=false

if isTrue then 
    print('value is true')
else
    print('value is false')
end

if not nil then
    print('nil is false')
else
    print('nil is true')
end

--number 类型的例子
--
count=1
print(count)
count = count+1

print(count)

-- string 字符串类型的例子
--
str = "Hello"

-- 字符串连接用两个点
str = str .. "world"

print(str)

--多行的字符串用[[]] 括起来
html =[[
<html>
    <head></head>
    <body></body>
</html>
]]

print(html)

--lua会自动转型
print("2"+5)

--table 表是一个关联数组
--
local tb2={}

local tb3={"apple","pear","orange","grape"}


print_table(tb3)

tb3["p"]=234

print_table(tb3)

--函数是一等公民，这个不用说了吧，和javascript的语法比较类似
function add (a,b)
    return a+b
end

function action(a,fun)
    return a + fun(a)
end

print(add(1,2))

print(action(1,function(a)return a+1 end))

--thread lua 中最主演的线程是协程，它和线程差不多，有自己的独立的栈，局部变量和指令指针，可以和其他协程共享
--全局变量和其他大部分东西
--线程和协程的区别，线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起是才会暂停。

--[[userdata（自定义类型）
userdata 是一种用户自定义数据，用于表示一种由应用程序或 C/C++ 语言库所创建的类型，可以将任意 C/C++ 的任意数据类型的数据（通常是 struct 和 指针）存储到 Lua 变量中调用。]]















