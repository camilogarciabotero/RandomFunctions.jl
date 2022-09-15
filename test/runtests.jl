using RandomFunctions
using Test

@testset "collatz.jl" begin
    @test collatz_steps(10) == [5, 16, 8, 4, 2, 1]
    @test collatz_steps_02(10) == [5, 16, 8, 4, 2, 1]
    @test max_stop_time(10) == (19,9)
    @test max_stop_time_02(10^7) == (8400511, 685)
    @test max_stop_time_03(10^7) == (8400511, 685)
end

@testset "edit_distance.jl" begin
    @test edit_distance("ATCTCGT", "ACTCCTC")[1] == 3.0
end

@testset "sieve.jl" begin
    @test sieve_01(7) == [2, 3, 5, 7]
    @test sieve_02(7) == [2, 3, 5, 7]
    @test sieve_03(7) == [2, 3, 5, 7]
end


@testset "hamming_distance.jl" begin
    @test hamming_distance("ABC", "ABC") == 0
    @test hamming_distance("ABD", "ABC") == 1
end