"""
The rastrigin function is notorious for having multiple local minima and only one global optima at (0,0)

"""
function rastrigin(x::T, y::T) where {T<:Real}
    return 20 + x^2 + y^2 - 10cos(2 * π * x) - 10cos(2 * π * y)
end

function rosenbrock(x::T, y::T) where {T<:Real}
    return (1 - x)^2 + 100(y - x^2)^2
end
