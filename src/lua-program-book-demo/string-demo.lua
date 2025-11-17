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

local function startWith(str, prefix)
    return string.find(str, "^" .. prefix) == 1
end

local function checkStartWith(str,prefix)
    if startWith(str, prefix) then
        print("String '" .. str .. "' starts with prefix '" .. prefix .. "'")
    else
        print("String '" .. str .. "' does not start with prefix '" .. prefix .. "'")
    end
    
end

checkStartWith("hello world", "hello")
checkStartWith("hello world", "world")
checkStartWith("----lua programming", "----")


