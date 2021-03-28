
"""
    update!(x, x̄)

Updates the array `x` according to `x .-= x̄`. Both `x` and `x̄` are `Vector{Float64}`
"""
function update!(x::Vector{T}, x̄::Vector{T}) where T <: Real
    return x .-= x̄
end

"""
    update!(opt, x, g)

Updates array `x` according to gradient `g`
with respect to optimizer `opt`.
"""
function update!(opt::Optimizer, x::Vector{T}, g::Vector{T}) where T <: Real
    return x .-= apply!(opt, x, g)
end
