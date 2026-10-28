a = "one string"
b = string.gsub(a, "one", "another") -- change string parts
print(a)
print(b)

a = "a line"
b = 'another line'
--[[
    Strings in Lua can contain the following C-like escape sequences:
    
    \a	bell
    \b	back space
    \f	form feed
    \n	newline
    \r	carriage return
    \t	horizontal tab
    \v	vertical tab
    \\	backslash
    \"	double quote
    \'	single quote
    \[	left square bracket
    \]	right square bracket

--]]

print("one line\nnext line\n\"in quotes\", 'in quotes'")
print('a backslash inside quotes: \'\\\'')
print("a simplier way: '\\'")

page = [[
<HTML>
<HEAD>
<TITLE> An HTML Page</TITLE>
</HEAD>
<BODY>
    <A HREF="http://www.lua.org">Lua</A>
</BODY>
</HTML>
]]

print(page)

print("10" + 1) --> 11
print("10 + 1") --> 10 + 1
print("-5.3e-10"*"2") --> -1.06e-09
--print("hello" + 1) --> ERROr (cannot convert "hello")

print(10 .. 20) --> 1020

--[[
Despite those automatic conversions, strings and numbers are different things. 
A comparison like 10 == "10" is always false, because 10 is a number and "10" is a string.
If you need to convert a string to a number explicitly, you can use the function tonumber,
which returns nil if the string does not denote a proper number:
--]]

line = io.read() -- read a line
n = tonumber(line) -- try to convert it to a number
if n == nil then
    error(line .. "is not a valid number")
else
    print(n*2)
end

-- To convert number to a string you can call the function tostring or 
--- concatenate the number with a the empty string:

print(tostring(10) == "10") --> true
print(10 .. "" == "10") --> true