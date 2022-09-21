local exist = redis.call('exist', KEYS[1]);
if exist == 1 then
  return redis.call('incr', KEYS[1])
else
  return -1;
end
