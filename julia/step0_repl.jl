#!/usr/bin/env julia

READ(x::String) = x
EVAL(x::String) = x
PRINT(x::String) = x

rep(x::String) = x |> READ |> EVAL |> PRINT

function REPL()
    while true
        print("user> ")
        usrinput = readline(STDIN)
        usrinput == "quit" ? break : 
        println(rep(usrinput))
    end
end

REPL()
