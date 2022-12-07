local luaunit = require('luaunit')
local str = "one thing"
local result = string.gsub(str, "one", "another")
luaunit.assertEquals("another thing", result)
print(result)


