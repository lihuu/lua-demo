local exist = redis.call('exists', KEYS[1])
if exist == 1 then
  local limitCount = tonumber(redis.call('get', KEYS[2]))
  if limitCount < tonumber(ARGV[1]) then
    return 0
  end
  redis.call('incrby', KEYS[1], ARGV[1])
  redis.call('decrby', KEYS[2], ARGV[1])
  return 1
else
  return -1;
end

