print(b) -- nil
b = 10
print(b) -- 10

-- Assigning nil to a global variable effectively deletes it, making it behave as though it had never been defined.
b = nil
print(b) --> nil
