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
A simple benchmark of the function on `Intel(R) Core(TM) i5-8257U CPU @ 1.40GHz`
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