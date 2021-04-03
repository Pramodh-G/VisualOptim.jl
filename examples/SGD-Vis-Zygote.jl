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
    using VisualOptim
    plotly()
end

# ╔═╡ 4419ca0c-80ea-11eb-38e0-9dc5d25fa2c2
md"Add Library for Dark mode"

# ╔═╡ dc72ce94-8758-11eb-0846-3b66ba7f962c
html"<button onclick=present()> present </button>"

# ╔═╡ b7d9dd1e-80d7-11eb-0fc1-2d52414a9e70
begin
    using DarkMode: DarkMode
    DarkMode.enable()
    # OR DarkMode.Toolbox(theme="default")
end

# ╔═╡ 0008da96-80eb-11eb-1b44-15ac852eae50
md"
These sliders control the learning rate $\eta$ and the initial value of $x$. Please play around with them to get a sense of how the optimizer works
"

# ╔═╡ b74929b4-80d8-11eb-08d6-f52ce81e4da4
@bind η Slider(0.1:0.05:1; show_value=true, default=0.2)

# ╔═╡ 62e0efe8-8981-11eb-03db-9da240116edb

# ╔═╡ Cell order:
# ╟─4419ca0c-80ea-11eb-38e0-9dc5d25fa2c2
# ╠═dc72ce94-8758-11eb-0846-3b66ba7f962c
# ╠═b7d9dd1e-80d7-11eb-0fc1-2d52414a9e70
# ╠═07ca21ee-80d8-11eb-26f5-3927b8d5af66
# ╟─0008da96-80eb-11eb-1b44-15ac852eae50
# ╠═b74929b4-80d8-11eb-08d6-f52ce81e4da4
# ╠═62e0efe8-8981-11eb-03db-9da240116edb
