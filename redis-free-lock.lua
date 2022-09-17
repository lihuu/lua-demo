local exist = redis.call('exists', KEYS[1]);
if exist == 1 then
  return redis.call('decr', KEYS[1])
else
  return -1;
end

