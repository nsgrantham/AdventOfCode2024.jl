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

@testset "Day 5" begin
    example = """47|53
97|13
97|61
97|47
75|29
61|13
75|53
29|13
97|29
53|29
61|53
97|53
61|29
47|13
75|47
97|75
47|61
75|61
47|29
75|13
53|13

75,47,61,53,29
97,61,53,29,13
75,29,13
75,97,47,61,53
61,13,29
97,13,75,29,47"""

    @test AdventOfCode2024.Day5.solve(IOBuffer(example)) == (143, 123)
end

@testset "Day 7" begin
    example = """190: 10 19
3267: 81 40 27
83: 17 5
156: 15 6
7290: 6 8 6 15
161011: 16 10 13
192: 17 8 14
21037: 9 7 18 13
292: 11 6 16 20"""

    @test AdventOfCode2024.Day7.solve(IOBuffer(example)) == (3749, 11387)
end

@testset "Day 8" begin
    example = """............
........0...
.....0......
.......0....
....0.......
......A.....
............
............
........A...
.........A..
............
............"""

    @test AdventOfCode2024.Day8.solve(IOBuffer(example)) == (14, 34)
end

