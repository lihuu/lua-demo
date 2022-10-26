#!/usr/local/bin/lua

local luasql = require "luasql.mysql"
local env = luasql.mysql()
local conn = env:connect("test", "root", "root", "127.0.0.1", 3306)

local cur = conn:execute("select * from Customers")
local row = cur:fetch({}, "a")
while row do
  local var = string.format("%d %s \n", row.Id, row.Name)
  print(var)
  row = cur:fetch(row, "a")
end
conn:close()
env:close()

