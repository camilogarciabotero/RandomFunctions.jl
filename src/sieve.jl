using Primes

function sieve_01(n::Int64)::Vector{Int64}
    [ x for x in 2:n if all( x % i != 0 for i in 2:x^0.5 + 1) || x == 2 ]
end

function sieve_02(n::Int64)::Vector{Int64}
    L::Vector{Int64} = []
    for i::Int64 in 2:n
        if isprime(i)
            push!(L,i)
        end
    end
    return L
end

function sieve_03(n::Int64)::Vector{Int64}
    [ x for x in 2:n if isprime(x) ]::Vector{Int64}
end