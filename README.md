#### lua Demo
##### lua的简单的语法
简单的一个Hello,world的程序
```lua
print("Hello,world")
```
##### lua的基本数据类型
lua有8个基本的数据类型，nil boolean number string usedata function thread table
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
