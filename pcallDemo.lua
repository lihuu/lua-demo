function test()
  return 1
end

local result, a = pcall(test)

print(result)
print(a)

