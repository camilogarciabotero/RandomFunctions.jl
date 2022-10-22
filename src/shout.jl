"""
This funciton capitalizes all letters and reomves vowels from a string.

```@example
    str = "goblin"
    shout(str) = "GBLN"
```
"""
function shout(str::String)::String
    filtering(a) = filter(x -> x ∉("aeiouAEIOU"), a)
    ∘(uppercase, filtering)(str)
end





