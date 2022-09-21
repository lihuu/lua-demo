local function testParam(...)
  print({...})
  for key, value in ipairs({...}) do
    print(key)
    print(value)
  end
end

testParam(1, 2)

