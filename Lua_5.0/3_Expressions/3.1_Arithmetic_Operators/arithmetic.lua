p = [[
    Lua supports the usual arithmetic operators: the binary '+' (addition), '-' (subtraction), '*' (multiplication), '/' (division), and the unary '-' (negation). 
    All of them operate on real numbers.
    Lua also offers partial support for '^' (exponentiation). 
    One of the design goals of Lua is to have a tiny core. 
    An exponentiation operation (implemented through the pow function in C) would mean that we should always need to link Lua with the C mathematical library. 
    To avoid this need, the core of Lua offers only the syntax for the '^' binary operator, which has the higher precedence among all operations. 
    The mathematical library (which is standard, but not part of the Lua core) gives to this operator its expected meaning.
]]

print(p)