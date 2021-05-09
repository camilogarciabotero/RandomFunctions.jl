function stop_time(t::Int)
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

function max_stop_time_02(t::Int)
    l = (0,[])
    Threads.@threads for i in 1:t
        m = stop_time(i)
        if length(m) > length(l[2])
             l = (i,m)
        end 
    end
    return l[1],length(l[2])
end