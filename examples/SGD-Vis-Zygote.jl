### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 07ca21ee-80d8-11eb-26f5-3927b8d5af66
begin
	using PlutoUI
	using Zygote
	using Plots
	pyplot()
end

# ╔═╡ 4419ca0c-80ea-11eb-38e0-9dc5d25fa2c2
md"Add Library for Dark mode"

# ╔═╡ b7d9dd1e-80d7-11eb-0fc1-2d52414a9e70
begin
    import DarkMode
    DarkMode.enable()
    # OR DarkMode.Toolbox(theme="default")
end

# ╔═╡ 5d1db0b8-80ea-11eb-24d3-0d5cad7eb115
md"
Imports and installations. Please make sure that these packages are already existent in your global environment. If not, use the Julia REPL to add these packages using
```julia
julia> ]
(v1.5) pkg> add Zygote, Plots, PyPlot, PlutoUI
```
Make sure that the `matlplotlib` python library is installed to make use of the PyPlot backend.
"

# ╔═╡ 0008da96-80eb-11eb-1b44-15ac852eae50
md"
These sliders control the learning rate $\eta$ and the initial value of $x$. Please play around with them to get a sense of how the optimizer works
"

# ╔═╡ b74929b4-80d8-11eb-08d6-f52ce81e4da4
@bind η Slider(0.1:0.05:1, show_value =true, default=0.2)

# ╔═╡ 67ad8506-80da-11eb-24f7-e51bb7920132
@bind x Slider(0:0.1:10, show_value =true, default=7)

# ╔═╡ bedd024c-80d9-11eb-0c43-21f9a1ff1156
begin
	mutable struct SGD
    	η::Float64
	end
	SGD() = SGD(η=0.1)
end

# ╔═╡ 2996edf0-80da-11eb-3490-f31a92f220e4
function descend!(opt::SGD, xₜ::Real, ∇xₜ::Real) 
    
    ∇xₜ *= opt.η
    xₜ -= ∇xₜ
    return xₜ
    
end

# ╔═╡ 2ee7fb5a-80da-11eb-0926-5ff63ca492f2
function optimize!(opt::SGD, x::Real, f::Function, n::Int)
    
    X::Vector{Float64} = []
    for i in 1:n 
        push!(X, x)
        ∇x = gradient(x -> f(x), x)[1]
        x = descend!(opt, x, ∇x)
    end
    return X
end 

# ╔═╡ c0069600-80da-11eb-30af-29ca785dfa40
f(x) = x^2

# ╔═╡ 38311552-80da-11eb-220d-2d19a19b9678
opt = SGD(η)

# ╔═╡ 9849038c-80da-11eb-0529-dde693dc3488
X = optimize!(opt, x, f, 45)

# ╔═╡ 117cd7a4-80db-11eb-0ada-991b766cf962
begin
	plot(f, X)
	plot!(f, -10:0.1:10)
	plot!(xlims=(-10,10), ylims=(0, 100))
end

# ╔═╡ Cell order:
# ╟─4419ca0c-80ea-11eb-38e0-9dc5d25fa2c2
# ╠═b7d9dd1e-80d7-11eb-0fc1-2d52414a9e70
# ╠═5d1db0b8-80ea-11eb-24d3-0d5cad7eb115
# ╠═07ca21ee-80d8-11eb-26f5-3927b8d5af66
# ╟─0008da96-80eb-11eb-1b44-15ac852eae50
# ╠═b74929b4-80d8-11eb-08d6-f52ce81e4da4
# ╠═67ad8506-80da-11eb-24f7-e51bb7920132
# ╠═bedd024c-80d9-11eb-0c43-21f9a1ff1156
# ╠═2996edf0-80da-11eb-3490-f31a92f220e4
# ╠═2ee7fb5a-80da-11eb-0926-5ff63ca492f2
# ╠═c0069600-80da-11eb-30af-29ca785dfa40
# ╠═38311552-80da-11eb-220d-2d19a19b9678
# ╟─9849038c-80da-11eb-0529-dde693dc3488
# ╠═117cd7a4-80db-11eb-0ada-991b766cf962
