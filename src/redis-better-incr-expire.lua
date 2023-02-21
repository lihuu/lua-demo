-- 如果没有key的时候，incr的时候，设置expire 5 分钟
local key = KEYS[1]
local c = redis.call('exists', key)
if c == 0 then
  redis.call("incr", key)
  redis.call("expire", key, 300)
else
  redis.call("incr", key)
end


