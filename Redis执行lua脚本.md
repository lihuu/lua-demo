# Redis 


### 执行 lua script

#### 在 redis-cli 中使用 eval 命令

![](https://blog-img-1259526442.cos.ap-nanjing.myqcloud.com/202209081726605.png)

例如：
`eval "return Redis.call('exists',KEYS[1]) 1 "key"`，

在 lua 脚本中传入的数据的 key 可以使用**KEYS**数组获得，传入的参数可以使用 **ARGV**数组获得。

> 使用 eval 命令的时候需要传入 keys 的数量

#### 使用 redis-cli 执行 lua 文件

**redis-cli --eval [your-code.lua] key [key ...] , arg [arg...]**

> 调试 lua 代码
> 在 执行 lua 文件的时候，使用 --ldb，可以启用调试模式
> 例如： redis-cli --ldb --eval hello-world.lua "hello" , "world"

```lua
local exist = redis.call('exists', KEYS[1]);
if exist == 1 then
  local limitCount = redis.call('get', KEYS[2]);
  if limitCount < KEYS[3] then
    return 0;
  end
  redis.call('incrby', KEYS[1], KEYS[3]);
  redis.call('decrby', KEYS[2], KEYS[3])
  return 1
else
  return -1;
end
```
