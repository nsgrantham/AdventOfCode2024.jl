module Day2

using AdventOfCode2024

function is_safe(report::Vector{Int})
    d = diff(report)
    (all(>(0), d) || all(<(0), d)) && all(x -> 1 <= abs(x) <= 3, d)
end

function is_safe_after_dampening(report::Vector{Int})
    for i in eachindex(report)
        is_safe(report[filter(!=(i), eachindex(report))]) && return true
    end
    false
end

function solve(input=pkgdir(AdventOfCode2024, "data", "Day2.txt"))
    reports = [parse.(Int, line) for line in split.(readlines(input))]

    unsafe_reports = reports[.!is_safe.(reports)]
    p1 = length(reports) - length(unsafe_reports)
    p2 = p1 + count(is_safe_after_dampening, unsafe_reports)

    p1, p2
end

end
