function norm(x, y)
    local n2 = x ^ 2 + y ^ 2
    return math.sqrt(n2)
end

function twice(x)
    return 2 * x
end

-- interactive window at terminal
-- command: lua
-- dofile(lib1.lua) -- load your library (.lua)
-- n = norm(3.4, 1.0)
-- print(twice(n)) -> 7.088..
