using VisualOptim
import VisualOptim: grad_cfg
import ForwardDiff: GradientConfig
using Test

@testset "VisualOptim.jl" begin
    @testset "update! tests" begin
        @testset "update! AbstractArray tests" begin
            @test update!(ones(100), ones(100)) == zeros(100)
            @test update!(Float64[5.3, 5.4], Float64[2.5, 2.4]) ≈ Float64[2.8, 3]
        end
    end

    @testset "rastrigin tests" begin
        for i in 1:5
            @test rastrigin(Float64[i, i]) ≈ 2(i)^2
            @test rastrigin(Float64[i, i]) ≈ 2(i)^2
        end
        @test_throws MethodError rastrigin([1, 2])
    end

    @testset "rosenbrock tests" begin
        @test rosenbrock(Float64[1, 1]) == 0
        @test rosenbrock(Float64[3, 3]) == 3604

        @test_throws MethodError rosenbrock([1, 2])
    end

    @testset "Gradient Configuration tests" begin
        f(x) = sum(x .^ 2)
        x = [1.0, 3.0, 4, 5, 6]
        chunk = 5
        @test grad_cfg(f, x) isa GradientConfig
        @test grad_cfg(f, x; chunk=chunk) isa GradientConfig
        @test_throws MethodError grad_cfg(f, x[1])
    end
end
