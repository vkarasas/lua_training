title = "    3.2 - Relational Operators\n \n"

p = [[
    Lua provides the following relational operators:
        
        <   >   <=  >=  ==  ~=
    
    All these operators always result in true or false.
    The operator == tests for equality; the operator ~= is the negation of equality. 
    We can apply both operators to any two values. 
    If the values have different types, Lua considers them different values. 
    Otherwise, Lua compares them according to their types. 
    Specifically, nil is equal only to itself.

    Lua compares tables, userdata, and functions by reference, that is, 
    two such values are considered equal only if they are the very same object. 
    For instance, after the code

        a = {}; a.x = 1; a.y = 0
        b = {}; b.x = 1; b.y = 0
        c = a
    
    you have that a==c but a~b
    
    We can apply the order operators only to two numbers or to two strings. 
    Lua compares numbers in the usual way. 
    Lua compares strings in alphabetical order, which follows the locale set for Lua. 
    For instance, with the European Latin-1 locale, we have "acai" < "açaí" < "acorde". 
    Other types can be compared only for equality (and inequality).

    When comparing values with different types, you must be careful: 
    Remember that "0"==0 is false. 
    Moreover, 2<15 is obviously true, but "2"<"15" is false (alphabetical order!). 
    To avoid inconsistent results, 
    Lua raises an error when you mix strings and numbers in an order comparison, 
    such as 2<"15".
]]

print(title .. p)