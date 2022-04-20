#!/usr/local/bin/lua

luasql = require "luasql.mysql"
env = luasql.mysql()
conn = env:connect("test", "root", "root", "127.0.0.1", 3306)

cur = conn:execute("select * from Customers")
row = cur:fetch({}, "a")
while row do
    var = string.format("%d %s \n", row.Id, row.Name)
    print(var)
    row = cur:fetch(row, "a")
end
conn:close()
env:close()
