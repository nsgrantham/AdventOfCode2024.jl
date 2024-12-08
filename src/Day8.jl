module Day8

using AdventOfCode2024
using Combinatorics


function solve(input=pkgdir(AdventOfCode2024, "data", "Day8.txt"))
    antennas_map = permutedims(stack(readlines(input)))
    antennas = [findall(==(freq), antennas_map) for freq in filter(!=('.'), unique(antennas_map))]
    antennas_map = CartesianIndices(antennas_map) 

    antinodes = Set()
    for antennas_freq in antennas
        for (x, y) in Combinatorics.combinations(antennas_freq, 2)
            delta = x - y
            x_anti = x - 2 * delta
            y_anti = y + 2 * delta
            x_anti in antennas_map && push!(antinodes, x_anti)
            y_anti in antennas_map && push!(antinodes, y_anti)
        end
    end
    p1 = length(antinodes)

    antinodes = Set()
    for antennas_freq in antennas
        for (x, y) in Combinatorics.combinations(antennas_freq, 2)
            push!(antinodes, x)
            push!(antinodes, y)
            delta = x - y
            for i in Iterators.countfrom(2)
                x_anti = x - i * delta
                x_anti in antennas_map || break
                push!(antinodes, x_anti)
            end
            for i in Iterators.countfrom(2)
                y_anti = y + i * delta
                y_anti in antennas_map || break
                push!(antinodes, y_anti)
            end
        end
    end
    p2 = length(antinodes)

    p1, p2
end

end
