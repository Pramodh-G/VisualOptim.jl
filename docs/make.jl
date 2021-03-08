using VisualOptim
using Documenter

DocMeta.setdocmeta!(VisualOptim, :DocTestSetup, :(using VisualOptim); recursive=true)

makedocs(;
    modules=[VisualOptim],
    authors="Pramodh-G, rohanblueboybaijal",
    repo="https://github.com/Pramodh-G/VisualOptim.jl/blob/{commit}{path}#{line}",
    sitename="VisualOptim.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://Pramodh-G.github.io/VisualOptim.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/Pramodh-G/VisualOptim.jl",
)
