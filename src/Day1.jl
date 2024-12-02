module Day1

using AdventOfCode2024

function solve(input=pkgdir(AdventOfCode2024, "data", "Day1.txt"))
    lines = split.(readlines(input))
    l = parse.(Int, first.(lines))
    r = parse.(Int, last.(lines))

    p1 = sum(abs.(sort(l) .- sort(r)))
    
    n = Dict(x => count(==(x), r) for x in unique(r))
    p2 = sum(x * get(n, x, 0) for x in l)

    p1, p2
end

end
