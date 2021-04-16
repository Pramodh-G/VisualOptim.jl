export rosenbrock, rastrigin

"""
The rastrigin function is notorious for having multiple local minima and only one global optima at (0,0)

"""
function rastrigin(x::Vector{T}) where {T <: AbstractFloat}
    a = one(eltype(x)) * 10
    return size(x, 1) * a + sum(@. x^2 - a * cos(2 * π * x))
end

function rosenbrock(x::Vector{T}) where {T <: AbstractFloat}
    f = zero(eltype(x))
    a = one(eltype(x))
    b = 100 * a
    for i in 1:(length(x) - 1)
       @inbounds f += b * (x[i + 1] - x[i]^2)^2 + (a - x[i])^2
    end
    return f
end
