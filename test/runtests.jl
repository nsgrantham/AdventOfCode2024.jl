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
