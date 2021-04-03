using ForwardDiff: GradientConfig, Chunk

"""
    grad_cfg(x)

This is a utility function for returning the `GradientConfig`. Here, `chunk` is the Chunk number, `f` is the function to be optimized, `x` is the input vector;
is primarily used to generate more information about the sizes of inputs, thus causing speedups.
"""
function grad_cfg(f, x::AbstractVector, chunk)
    return isnothing(chunk) ? GradientConfig(f, x) : GradientConfig(f, x, Chunk{chunk}())
end
