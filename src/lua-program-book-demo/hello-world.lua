local luaunit = require("luaunit")
local a = "hello"
print(a)
luaunit.assertEquals(type(a), "string")
luaunit.assertEquals(type(nil), "nil")
luaunit.assertEquals(type(true), "boolean")
luaunit.assertEquals(type(1), "number")
luaunit.assertEquals(type({}), "table")
luaunit.assertEquals(type(print), "function")

print(luaunit)


