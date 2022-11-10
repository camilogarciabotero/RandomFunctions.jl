"""
This function capitalizes all letters and removes vowels from a string.

```@example
    str = "goblin"
    shout(str) = "GBLN"
```
"""
function shout(str::String)::String
    filtering(a) = filter(x -> x ∉("aeiouAEIOU"), a)
    ∘(uppercase, filtering)(str)
end