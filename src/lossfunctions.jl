
"""
The rastrigin function is notorious for having multiple local minima and only one global optima at (0,0)

"""
function rastrigin(x::Vector{T}) where T <: Real
    return 10 * size(x)[1] + sum(@. x^2 - 10 * cos(2*π*x))
end

function rosenbrock(x::Vector{T}) where T <: Real
    f = 0.0
    for i in 1:(size(x, 1) - 1)
        f += 100 * (x[i + 1] - x[i])^2 + (1 - x[i])^2
    end
    return f
end