-- local luaunit = require('luaunit')
-- local str = "one thing"
-- local result = string.gsub(str, "one", "another")
-- luaunit.assertEquals("another thing", result)
-- print(result)

local obj = {}

function obj.hello(self)
    print(self)
    return "Hello, World!"
end

function obj:test()
    print(self)
    return "Hello, Test!"
end

print(obj.hello())

print(obj:hello())
print(obj:test())