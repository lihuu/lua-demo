--
local co = coroutine.create(function (a)
    print(a)
    for i = 1, 100 do
      local b =  coroutine.yield(i)
    end
end)

coroutine.resume(co,1000)

local result,v = coroutine.resume(co);
print(result)
print(v)

result,v = coroutine.resume(co);
print(result)
print(v)




