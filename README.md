#### lua Demo

##### lua 的简单的语法

简单的一个 Hello,world 的程序

```lua
print("Hello,world")
```

##### lua 的基本数据类型

lua 有 8 个基本的数据类型，nil boolean number string usedata function thread table

```lua
--注意type函数的返回值是string类型
print(type("hello"))
print(type (10))
print(type (print))
print(type(true))
print(type (nil) )

tab1 = {name="silent",age=1}
print(tab1)
print(pairs)

```
