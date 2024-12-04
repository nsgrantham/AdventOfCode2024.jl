# AdventOfCode2024.jl

[![Build Status](https://github.com/nsgrantham/AdventOfCode2024.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/nsgrantham/AdventOfCode2024.jl/actions/workflows/CI.yml?query=branch%3Amain)

My solutions to [Advent of Code 2024](https://adventofcode.com/2024) using Julia.

| Puzzle                                                              | Input                         | Solver                     |
|:--------------------------------------------------------------------|:------------------------------|:---------------------------|
| [Day 1: Historian Hysteria](https://adventofcode.com/2024/day/1)    | [Day1.txt](./data/Day1.txt)   | [Day1.jl](./src/Day1.jl)   |
| [Day 2: Red-Nosed Reports](https://adventofcode.com/2024/day/2)     | [Day2.txt](./data/Day2.txt)   | [Day2.jl](./src/Day2.jl)   |
| [Day 3: Mull It Over](https://adventofcode.com/2024/day/3)          | [Day3.txt](./data/Day3.txt)   | [Day3.jl](./src/Day3.jl)   |
| [Day 4: Ceres Search](https://adventofcode.com/2024/day/4)          | [Day4.txt](./data/Day4.txt)   | [Day4.jl](./src/Day4.jl)   |


## Install

```julia
using Pkg

Pkg.add(url = "https://github.com/nsgrantham/AdventOfCode2024.jl")
```

## Test

```julia
using Pkg

Pkg.test("AdventOfCode2024")
```

## Solve

```julia
using AdventOfCode2024

AdventOfCode2024.Day1.solve()
```
