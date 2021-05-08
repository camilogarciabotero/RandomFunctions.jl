using RandomFunctions
using Test

@testset "RandomFunctions.jl" begin
    @test stop_time(10) == [5, 16, 8, 4, 2, 1]
    @test max_stop_time(10) == (19,9)
end
