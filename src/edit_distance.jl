"""
This functions takes two strings and calculates the edit distance, which is the number
of changes of two strings when both display different lengths:

```@example
    s1 = "ATCTCGT"
    s2 = "ACTCCTC"
    edit_distance(s1,s2)[1] = 3.0
    edit_distance(s1,s2)[2] =  [0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0; 
                               1.0 0.0 1.0 2.0 3.0 4.0 5.0 6.0; 
                               2.0 1.0 1.0 1.0 2.0 3.0 4.0 5.0; 
                               3.0 2.0 1.0 2.0 1.0 2.0 3.0 4.0; 
                               4.0 3.0 2.0 1.0 2.0 2.0 2.0 3.0;
                               5.0 4.0 3.0 2.0 1.0 2.0 3.0 2.0; 
                               6.0 5.0 4.0 3.0 2.0 2.0 3.0 3.0;
                               7.0 6.0 5.0 4.0 3.0 3.0 2.0 3.0]
```
This functions outputs the edit distance and the alignment matrix as well.
"""
function edit_distance(s1::String, s2::String)
    D::Array = zeros(length(s1)+1,length(s2)+1)
    D[:,1]= 0:length(s1) 
    D[1,:] = 0:length(s2)
    for i in 2:length(s1)+1
        for j in 2:length(s2)+1
            (s1[i-1] != s2[j-1]) ? δ = 1 : δ = 0 
            D[i,j] = min(D[i-1,j-1]+δ, D[i-1,j]+1, D[i,j-1]+1)
        end
    end
    return D[length(s1)+1, length(s2)+1],D
end