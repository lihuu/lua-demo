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

