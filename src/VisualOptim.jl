module VisualOptim

export update!, optimize!, rosenbrock, rastrigin, Descent

include("update.jl")
include("lossfunction.jl")
include("optimizer.jl")
include("utils.jl")
end
