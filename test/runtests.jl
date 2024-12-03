using AdventOfCode2024
using Test


@testset "Day 1" begin
    example = """3   4
4   3
2   5
1   3
3   9
3   3"""

    @test AdventOfCode2024.Day1.solve(IOBuffer(example)) == (11, 31)
end

@testset "Day 2" begin
    example = """7 6 4 2 1
1 2 7 8 9
9 7 6 2 1
1 3 2 4 5
8 6 4 4 1
1 3 6 7 9"""

    @test AdventOfCode2024.Day2.solve(IOBuffer(example)) == (2, 4)
end

