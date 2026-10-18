--[[
    The usage of lua is: 
    lua `[options] [script[args]]
--]]

--[[
    Everything is optional
    The -e option allows us to enter code directly into the command line.
    prompt > lua -e "print(math.sin(12))" --> -0.536...
    The -l loads a file and -i enters interactive mode after running the other arguments. So, for instance, the call
    prompt> lua -i -l a.lua -e "x = 10"
    will load the file a.lua, then execute the assignment x = 10, and finally present a prompt for interaction.

    Whenever the global variable _PROMPT is defined, lua uses its value as the prompt when interacting. 
    So, you can change the prompt with a call like this:
    prompt> lua -i -e "_PROMPT=' lua> '"
    lua>
    
    We are assuming that "prompt" is the system's prompt. 
    In the example, the outer quotes stop the shell from interpreting the inner quotes, which are interpreted by Lua. 
    More exactly, Lua receives the following command to run:
    _PROMPT=' lua> '
    which assigns the string " lua> " to the global variable _PROMPT.
    Before it starts running arguments, lua looks for an environment variable called LUA_INIT. 
    If there is such a variable and its content is @filename, then lua loads the given file. 
    If LUA_INIT is defined but does not start with `@´, then lua assumes that it contains Lua code and runs it. 
    This variable gives you great power when configuring the stand-alone interpreter, because you have the full power of Lua in the configuration. 
    You can pre-load packages, change the prompt and the path, define your own functions, rename or delete functions, and so on.

    A main script can retrieve its arguments in the global variable arg. In a call like

    prompt> lua script a b c
    lua creates the table arg with all the command-line arguments, before running the script. 
    The script name goes into index 0; its first argument (a in the example), goes to index 1, and so on. 
    
    Eventual options go to negative indices, as they appear before the script. For instance, in the call
    prompt> lua -e "sin=math.sin" script a b

    lua collects the arguments as follows:
        arg[-3] = "lua"
        arg[-2] = "-e"
        arg[-1] = "sin=math.sin"
        arg[0] = "script"
        arg[1] = "a"
        arg[2] = "b"
        More often than not, the script only uses the positive indices (arg[1] and arg[2], in the example).
--]]