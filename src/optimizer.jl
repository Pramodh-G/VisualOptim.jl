mutable struct Descent
    eta::Float64
end

Descent() = Descent(0.1)

function apply!(o::Descent, x, ∆)
    return ∆ .*= o.eta
end
