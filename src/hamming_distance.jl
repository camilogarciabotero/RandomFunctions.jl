function hamming_distance(x::String,y::String)
    @assert length(x) == length(y)
    hd = 0
    for i in 1:length(x)
        if x[i] != y[i]
            hd += 1
        end
    end
    return hd
end
