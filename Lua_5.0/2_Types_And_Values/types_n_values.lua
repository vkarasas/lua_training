--[[
    Lua is a dynamically typed language. There are no type definitions in the language; each value carries its own type.
    There are eight basic types in Lua: nil, boolean, number, string, userdata, function, thread, and table. The type function gives the type name of a given value:
--]]

print(type("hello World")) --> string
print(type(10.4*3)) --> number
print(type(print)) --> function
print(type(type)) --> function
print(type(true)) --> boolean
print(type(nil)) --> nil
print(type(type(X))) --> string

-- The last example will result in "string" no matter the value of X, because the result of type is always a string.

-- Variables have no predefined types; any variable may contain values of any type:

print(type(a)) --> nill is not initialized
a = 10 
print(type(a)) --> number 
a = "a string!"
print(type(a)) --> string
a = print --> yes this is valid
a(type(a)) --> fuction

--[[
    Notice the last two lines: Functions are first-class values in Lua; so, we can manipulate them like any other value. (More about that in Chapter 6.)
    Usually, when you use a single variable for different types, the result is messy code. 
    However, sometimes the judicious use of this facility is helpful, for instance in the use of nil to differentiate a normal return value from an exceptional condition. 
--]]