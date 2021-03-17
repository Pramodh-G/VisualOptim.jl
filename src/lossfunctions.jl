"""
This file contains a vareity of loss functions that we use to check our optimizers on.
"""

"""

"""
function rastrigrin(A::Real, x::Vector{T}) where {T<:Real}
    n = size(x, 1)
    return A * n + sum(x.^ 2 .- cos.(x))
end


function rosenbrock(x::Vector{T}) where {T<:Real}
    n = size(x, 1)
    f = 0.0
    for i = 1:n-1
        f += 100 * (x[i+1] - x[i])^2 + (1 - x[i])^2
    end
    return f
end