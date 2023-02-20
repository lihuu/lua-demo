local c = redis.call('exists', KEYS[1])
local maxCount = tonumber(ARGV[1])
if c == 1 then
  local currentCount = tonumber(redis.call('get', KEYS[1]))
  if tonumber(currentCount) >= maxCount then
    redis.call('expire', KEYS[1], 300)
    return 0;
  else
    return 1
  end
else
  return 1;
end


