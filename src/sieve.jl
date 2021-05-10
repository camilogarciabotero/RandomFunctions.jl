function sieve(n::Int64)::Vector{Int64}
    [ x for x in 1:n if all( x % i != 0 for i in 2:x^0.5 + 1) ]
end