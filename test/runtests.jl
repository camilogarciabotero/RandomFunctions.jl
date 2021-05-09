using RandomFunctions
using Test

@testset "RandomFunctions.jl" begin
    @test collatz_steps(10) == [5, 16, 8, 4, 2, 1]
    @test max_stop_time(10) == (19,9)
    @test max_stop_time_02(10^7) == (8400511, 685)
end
