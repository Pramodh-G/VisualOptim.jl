module VisualOptim

export update!, rosenbrock, rastrigin

include("update.jl")
include("lossfunction.jl")
include("optimizer.jl")

end
