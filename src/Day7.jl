module Day7

using AdventOfCode2024


function is_possible(value::Int, numbers::Vector{Int}; allow_concat=false)
    length(numbers) == 1 && return value == only(numbers)
    
    last = numbers[end]
    rest = numbers[1:end-1]
   
    is_subtractable = value >= last
    is_divisible = mod(value, last) == 0
    is_separable = allow_concat && endswith(string(value)[2:end], string(last))

    (is_subtractable && is_possible(value - last, rest; allow_concat)) || 
        (is_divisible && is_possible(div(value, last), rest; allow_concat)) ||
        (is_separable && is_possible(parse(Int, string(value)[1:end-length(string(last))]), rest; allow_concat))
end 

function solve(input=pkgdir(AdventOfCode2024, "data", "Day7.txt"))
    eqs = [(value=parse(Int, x), rest=parse.(Int, y)) for (x, y...) in split.(replace.(readlines(input), ':' => ' '))]

    p1 = sum(eq.value for eq in eqs if is_possible(eq.value, eq.rest; allow_concat=false))
    p2 = sum(eq.value for eq in eqs if is_possible(eq.value, eq.rest; allow_concat=true))

    p1, p2
end

end
