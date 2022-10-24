local lock_key = KEYS[1]
local lock_amount = tonumber(ARGV[1])
local redis = redis
local exist = redis.call('exists', lock_key)
if exist == 1 then
  local limitCount = tonumber(redis.call('hget', lock_key, 'limit_count'))
  if limitCount < lock_amount then
    return 0
  end
  -- increase lock count
  redis.call('hincrby', lock_key, 'lock_count', lock_amount)
  -- decrease limit count
  redis.call('hincrby', lock_key, 'limit_count', -lock_amount)
  -- increase data version
  redis.call('hincrby', lock_key, 'version', 1)
  return 1
else
  return -1;
end

