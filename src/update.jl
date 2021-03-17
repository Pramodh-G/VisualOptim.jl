"""
    update!(x, x̄)

Updates the array `x` according to `x .-= x̄`. Both `x` and `x̄` are `Vector{Float64}`
"""
function update!(x::Vector{T}, x̄::Vector{T}) where T <: Real
    return x .-= x̄
end

"""
    update!(opt, w, g)

Updates array `w` according to gradient `g`
with respect to optimizer `opt`.
"""
function update!(opt::Optimizer, w::Vector{T}, g::Vector{T}) where T <: Real
    return w .-= apply(opt, w, g)
end