module RandomFunctions

include("collatz.jl")
export collatz_steps, collatz_steps_02, max_stop_time, max_stop_time_02, max_stop_time_03

include("edit_distance.jl")
export edit_distance

include("sieve.jl")
export sieve

end