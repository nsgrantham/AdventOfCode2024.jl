module Day4

using AdventOfCode2024

const CI = CartesianIndex

function solve(input=pkgdir(AdventOfCode2024, "data", "Day4.txt"))
    word_search = permutedims(hcat(collect.(readlines(input))...))
    grid = CartesianIndices(word_search)
    
    p1 = 0
    dirs = (CI(0, 1), CI(1, 1), CI(1, 0), CI(1, -1), CI(0, -1), CI(-1, -1), CI(-1, 0), CI(-1, 1))
    for x in findall(==('X'), word_search)
        for dir in dirs
            rest = [word_search[x + i * dir] for i in 1:3 if x + i * dir in grid]
            if rest == ['M', 'A', 'S']
                p1 += 1
            end
        end
    end

    p2 = 0
    diag1 = (CI(1, 1), CI(-1, -1))
    diag2 = (CI(1, -1), CI(-1, 1))
    for a in findall(==('A'), word_search)
        rest1 = [word_search[a + dir] for dir in diag1 if a + dir in grid]
        rest2 = [word_search[a + dir] for dir in diag2 if a + dir in grid]
        if sort(rest1) == sort(rest2) == ['M', 'S']
            p2 += 1
        end
    end

    p1, p2
end

end
