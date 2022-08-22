function hamming_distance(x,y)
    @assert length(x) == length(y)
    hd = 0
    for i in 1:length(x)
        if x[i] != y[i]
            hd += 1
        end
    end
    return hd
end

hamming_distance(x,y)
