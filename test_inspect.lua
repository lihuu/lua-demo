#!/usr/bin/env lua

-- Load the inspect library
local inspect = require('inspect')

-- Create a sample table to demonstrate inspect
local sample_table = {
    name = "John Doe",
    age = 30,
    skills = {"lua", "python", "javascript"},
    address = {
        street = "123 Main St",
        city = "Anytown",
        country = "USA"
    },
    active = true
}

-- Print the table using inspect for pretty formatting
print("Using inspect to pretty-print a Lua table:")
print(inspect(sample_table))

print("\n" .. string.rep("-", 50))
print("Without inspect (default tostring):")
print(sample_table)