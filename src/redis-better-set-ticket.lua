-- test usage:
-- redis-cli --eval ./redis-better-set-ticket.lua "test_lock" , 10 8 1 0
local lock_key = KEYS[1]
-- total_count limit_count lock_count version
if #ARGV ~= 4 then
  return -1
end
local exists = redis.call("exists", lock_key)
if exists == 1 then
  return 0
end

redis.call("hset", lock_key, "total_count", ARGV[1], "limit_count", ARGV[2],
           "lock_count", ARGV[3], "version", ARGV[4])
return 1

