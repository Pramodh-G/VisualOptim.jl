using VisualOptim
using Test

@testset "VisualOptim.jl" begin

    @testset "update! tests" begin
        @test update!(ones(100), ones(100)) == zeros(100)
        @test update!(Float64[5.3, 5.4], Float64[2.5, 2.4]) ≈ Float64[2.8, 3]
    end

    @testset "rastrigin tests" begin
        for i in 1:5
            @test rastrigin([i, i]) ≈ 2i^2
        end
    end

end