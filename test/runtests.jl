using RandomFunctions
using Test

@testset "collatz.jl" begin
    @test collatz_steps(10) == [5, 16, 8, 4, 2, 1]
    @test collatz_steps_02(10) == [5, 16, 8, 4, 2, 1]
    @test max_stop_time(10) == (19,9)
    @test max_stop_time_02(10^7) == (8400511, 685)
end

@testset "edit_distance.jl" begin
    @test edit_distance("ATCTCGT", "ACTCCTC")[1] == 3.0
end