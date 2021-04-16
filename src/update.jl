using ForwardDiff: gradient!

export update!, optimize!, optimize

"""
    update!(x, x̄)

Updates the array `x` according to `x .-= x̄`. `x` is of type `AbstractArray`
"""
function update!(x::Vector{T}, x̄) where {T<:AbstractFloat}
    x .-= x̄
end

"""
    update!(opt, x, g)

Updates array `x` according to gradient `g`
with respect to optimizer `opt`.
"""
function update!(opt, x, g)
    x .-= apply!(opt, x, g)
end

"""
    optimize!(x, opt, f, iter)

Uses optimizer `opt` to update `x` to try and minimize `f(x)` in `iter` iterations. This is the mutating version, which changes the input vector.
"""
function optimize!(
    x::Vector{T}, f::Function, opt; iter::Int=10, chunk::Union{Int, Nothing}=2) where {T <: AbstractFloat}
    grad = similar(x)
    cfg = grad_cfg(f,x ; chunk=chunk)
    for i in 1:iter
        gradient!(grad, f, x, cfg)
        update!(opt, x, grad)
    end
end

function optimize(x::Vector{T}, f::Function, opt; iter::Int=10, chunk::Union{Int, Nothing}=2) where {T <: AbstractFloat}
   y =copy(x)
   optimize!(y, f, opt; iter=iter, chunk=chunk)
   return y
end

function optimize!(A::Matrix{T}, x::Vector{T}, f::Function, opt; iter::Int=10, chunk::Union{Int, Nothing}=2) where {T <: AbstractFloat}
    if size(A)!=(size(x)[1]+1, iter)
        throw(ArgumentError("size of the matrix is not $(size(x)[1]+1)x$(iter)"))
    end
    grad = similar(x)
    cfg = grad_cfg(f, x; chunk=chunk)
    A[:, 1] = x
    for i in 1:iter
        A[:, i+1] = @view A[:, i]
        gradient!(grad, f, A[:, i+1], cfg)
        update!(opt, A[:, i+1], grad)
    end
end