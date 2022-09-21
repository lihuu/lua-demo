local result = {}
for index, value in ipairs(KEYS) do
  result[index] = redis.call("get", value)
end
return result

