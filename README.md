# RandomFunctions

[![Build Status](https://travis-ci.com/camilogarciabotero/RandomFunctions.jl.svg?branch=main)](https://travis-ci.com/camilogarciabotero/RandomFunctions.jl)
[![codecov](https://codecov.io/gh/camilogarciabotero/RandomFunctions.jl/branch/main/graph/badge.svg?token=4oLhs2LF6D)](https://codecov.io/gh/camilogarciabotero/RandomFunctions.jl)
[![CI](https://github.com/camilogarciabotero/RandomFunctions.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/camilogarciabotero/RandomFunctions.jl/actions/workflows/CI.yml)
# Installation

As this is an unregistered package, installation should procceed this way:

```jl
pkg> add https://github.com/camilogarciabotero/RandomFunctions.jl
```
# Challenges and code
## Collatz conjecture

```jl
julia> using RandomFunctions
julia> max_stop_time(100)
```

Output shows the stop time, that is the number of steps that a number make before reaching 1, and the associated number number between 1 and 100 that has the largest number of steps:
```
(118, 97)
```

A simple benchmark of the function on `Intel(R) Core(TM) i5-8257U CPU @ 1.40GHz`.

```jl
julia> @time max_stop_time(10^6)
```

```
12.684547 seconds (97.56 M allocations: 4.382 GiB, 62.37% gc time)
(524, 837799)
```

A second version of the function reduces memory siginificantly and increasses speed:

```jl
julia> @time max_stop_time_02(10^7)
```

```
19.539113 seconds (1.23 G allocations: 52.362 GiB, 49.46% gc time)
(8400511, 685)
```

In this example the number with more steps is **8400511** and it needs **685** steps before reach 1.

## Edit distance

This is the distance between two strings when displaying different lengths.

```jl
julia> edit_distance("ATCTCGT", "ACTCCTC")[1]
```

```
3.0
```

The functions is implemented using the dynamic programming paradigm, so it enables getting the alignment matrix:

```jl
julia> edit_distance("ATCTCGT", "ACTCCTC")[2]
```

```
8×8 Matrix{Float64}:
 0.0  1.0  2.0  3.0  4.0  5.0  6.0  7.0
 1.0  0.0  1.0  2.0  3.0  4.0  5.0  6.0
 2.0  1.0  1.0  1.0  2.0  3.0  4.0  5.0
 3.0  2.0  1.0  2.0  1.0  2.0  3.0  4.0
 4.0  3.0  2.0  1.0  2.0  2.0  2.0  3.0
 5.0  4.0  3.0  2.0  1.0  2.0  3.0  2.0
 6.0  5.0  4.0  3.0  2.0  2.0  3.0  3.0
 7.0  6.0  5.0  4.0  3.0  3.0  2.0  3.0
 ```
