export Descent

mutable struct Descent
    eta::Float64
end

Descent() = Descent(0.1)

function apply!(o::Descent, x, ∆)
     ∆ .*= o.eta
end
