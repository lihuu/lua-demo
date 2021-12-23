-- 创建一个协程
local co = coroutine.create(function (a)
    print(a)
    for i = 1, 100 do
      --yield 的参数会作为 resume的返回值
      local b =  coroutine.yield(i)
      print("resume的参数" .. (b or "nil"))
    end
end)

print(type(co))
print(coroutine.status(co))

--启动，第一次调用resume 的参数将被当作上面的 create 中的function 参数传入
coroutine.resume(co,1000)

-- 第二次之后 resume 的参数将会作为 yeild的返回值
local result,v = coroutine.resume(co,101);
print(result)
print(v)

result,v = coroutine.resume(co);
print(result)
print(v)

