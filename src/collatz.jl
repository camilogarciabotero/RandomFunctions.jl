function stop_time(t::Int)
    s = []
    while true
        if t % 2 == 0
            t = t ÷ 2
        else
            t = 3*t + 1
        end
        push!(s,t)
        t == 1 && break
    end
    return s
end

function max_stop_time(t::Int)
    l = []
    w = []
    for i in 1:t
        push!(l, stop_time(i))
    end
    for j in l
        push!(w, length(j))
    end
    return findmax(w)
 end
