using ForwardDiff: gradient!

export update!, optimize!

"""
    update!(x, x̄)

Updates the array `x` according to `x .-= x̄`. `x` is of type `AbstractArray`
"""
function update!(x::AbstractVector, x̄)
    return x .-= x̄
end

"""
    update!(opt, x, g)

Updates array `x` according to gradient `g`
with respect to optimizer `opt`.
"""
function update!(opt, x, g)
    return x .-= apply!(opt, x, g)
end

"""
    optimize!(x, opt, f, iter)

Uses optimizer `opt` to update `x` to try and minimize `f(x)` in `iter` iterations. This is the mutating version, which changes the input vector.
"""
function optimize!(
    x::AbstractVector{T}, f::Function, opt; iter::Int=10, chunk::Union{Int, Nothing}=2
) where {T <: AbstractFloat}
    grad = similar(x)
    cfg = grad_cfg(f, x; chunk=chunk)
    for i in 1:iter
        gradient!(grad, f, x, cfg)
        update!(opt, x, grad)
    end
    return x
end
