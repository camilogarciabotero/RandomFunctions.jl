# RandomFunctions

[![Build Status](https://travis-ci.com/camilogarciabotero/RandomFunctions.jl.svg?branch=master)](https://travis-ci.com/camilogarciabotero/RandomFunctions.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/camilogarciabotero/RandomFunctions.jl?svg=true)](https://ci.appveyor.com/project/camilogarciabotero/RandomFunctions-jl)
[![Coverage](https://codecov.io/gh/camilogarciabotero/RandomFunctions.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/camilogarciabotero/RandomFunctions.jl)

# Intallation

```jl
pkg> add RandomFunctions
```
# Challenges and code
## Collatz conjecture

```jl
julia> using RandomFunctions
julia> max_stop_time(100)
```
Output shows the stop time and largest natural number between 1 and 100
```
(118, 97)
```
A simple benchmark of the function on `Intel(R) Core(TM) i5-8257U CPU @ 1.40GHz`
```jl
julia> @time max_stop_time(10^6)
```
```
12.684547 seconds (97.56 M allocations: 4.382 GiB, 62.37% gc time)
```