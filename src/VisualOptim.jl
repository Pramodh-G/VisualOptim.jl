module VisualOptim

export Optimizer, FirstOrder,
        update!, rosenbrock, rastrigin

abstract type Optimizer end
abstract type FirstOrder <: Optimizer end

include("update.jl")
include("lossfunctions.jl")

end
