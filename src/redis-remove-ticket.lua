for index, _ in ipairs(KEYS) do
  redis.call("del", KEYS[index])
end

