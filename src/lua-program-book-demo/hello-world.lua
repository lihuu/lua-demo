local luaunit = require("luaunit")
local a = "hello"
print(a)
luaunit.assertEquals(type(a), "string")
luaunit.assertEquals(type(nil), "nil")
luaunit.assertEquals(type(true), "boolean")
luaunit.assertEquals(type(1), "number")
luaunit.assertEquals(type({}), "table")
luaunit.assertEquals(type(print), "function")
luaunit.assertEquals(type(1.0), "number")
luaunit.assertEquals(type(1), "number")
luaunit.assertEquals(math.type(1), "integer")
luaunit.assertEquals(math.type(1.9), "float")
luaunit.assertEquals(true, 1.0 == 1)

print(luaunit)


