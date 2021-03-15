module VisualOptim

export Optimizer, FirstOrder,
        update!

abstract type Optimizer end
abstract type FirstOrder <: Optimizer end

end

include("update.jl")