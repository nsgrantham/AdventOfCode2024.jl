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

@testset "Day 3" begin
    example1 = "xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))"
    example2 = "xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))"

    @test AdventOfCode2024.Day3.solve(IOBuffer(example1)) == (161, 161)
    @test AdventOfCode2024.Day3.solve(IOBuffer(example2)) == (161, 48)
end

@testset "Day 4" begin
    example = """MMMSXXMASM
MSAMXMSMSA
AMXSXMAAMM
MSAMASMSMX
XMASAMXAMM
XXAMMXXAMA
SMSMSASXSS
SAXAMASAAA
MAMMMXMMMM
MXMXAXMASX"""

    @test AdventOfCode2024.Day4.solve(IOBuffer(example)) == (18, 9)
end
