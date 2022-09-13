for index, value in ipairs(KEYS) do
  local result = redis.call("setnx", value, ARGV[index])
  if result == 1 then
    redis.call("expire", value, 36000)
  end
end

