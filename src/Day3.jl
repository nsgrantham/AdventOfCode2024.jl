module Day3

using AdventOfCode2024

function solve(input=pkgdir(AdventOfCode2024, "data", "Day3.txt"))
    corrupted_memory = read(input, String)

    re = r"mul\((\d+),(\d+)\)|do\(\)|don't\(\)"

    muls = []
    enabled = true
    for m in eachmatch(re, corrupted_memory)
        if m.match == "don't()"
            enabled = false
            continue
        end
        if m.match == "do()"
            enabled = true
            continue
        end
        product = parse(Int, m[1]) * parse(Int, m[2])
        push!(muls, (product = product, enabled = enabled))
    end

    p1 = sum(mul.product for mul in muls)
    p2 = sum(mul.enabled ? mul.product : 0 for mul in muls)

    p1, p2
end

end
