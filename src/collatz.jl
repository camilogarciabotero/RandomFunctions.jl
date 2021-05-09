function collatz_steps(t::Int)
    t < 1 && throw(DomainError(t))
    s = []
    while true
        if t % 2 == 0
            t = t ÷ 2
        else
            t = 3t + 1
        end
        push!(s,t)
        t == 1 && break
    end
    return s
end

function collatz_steps_02(t::Int)
    t < 1 && throw(DomainError(t))
    s = []
    collatz = (x) -> iseven(x) ? x ÷ 2 : 3x + 1
    while true 
        t = collatz(t)
        push!(s,t)
        t == 1 && break
    end
    return s
end

function max_stop_time(t::Int)
    t < 1 && throw(DomainError(t))
    l = []
    w = []
    for i in 1:t
        push!(l, collatz_steps(i))
    end
    for j in l
        push!(w, length(j))
    end
    return findmax(w)
 end

function max_stop_time_02(t::Int)
    t < 1 && throw(DomainError(t))
    l = (0,[])
    Threads.@threads for i in 1:t
        m = collatz_steps(i)
        if length(m) > length(l[2])
             l = (i,m)
        end 
    end
    return l[1],length(l[2])
end