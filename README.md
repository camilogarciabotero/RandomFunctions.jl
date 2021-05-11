# RandomFunctions

[![Latest Release](https://img.shields.io/github/release/camilogarciabotero/RandomFunctions.jl.svg)](https://github.com/camilogarciabotero/RandomFunctions.jl/releases/latest)
[![Build Status](https://travis-ci.com/camilogarciabotero/RandomFunctions.jl.svg?branch=main)](https://travis-ci.com/camilogarciabotero/RandomFunctions.jl)
[![codecov](https://codecov.io/gh/camilogarciabotero/RandomFunctions.jl/branch/main/graph/badge.svg?token=4oLhs2LF6D)](https://codecov.io/gh/camilogarciabotero/RandomFunctions.jl)
[![CI](https://github.com/camilogarciabotero/RandomFunctions.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/camilogarciabotero/RandomFunctions.jl/actions/workflows/CI.yml)
# Installation

As this is an unregistered package, installation should procceed this way:

```jl
pkg> add https://github.com/camilogarciabotero/RandomFunctions.jl
julia> using RandomFunctions
```
# Challenges and code
## Collatz conjecture

The Collatz conjecture states that any number can be transformed to one applying the following function:

$$
f(n)=\left\{
\begin{array}{c l}	
    n \div 2 & n \equiv 0\mod{}    \\
    3n+1 & n \equiv 1\mod{} 
\end{array}\right.
$$

In this example the number with more steps is 8400511 and it needs 685 steps before reach 1.


```jl
julia> max_stop_time_03(10^7)
```

```
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

## Eratosthenes' sieves

Here we implemented a function to find all primes from _2_ to _n_ using the [Erathostenes](https://en.wikipedia.org/wiki/Eratosthenes) sieve and a _list comprenhension_:

```jl
julia> sieve(5)
```

```
3-element Vector{Int64}:
 1
 3
 5
```
