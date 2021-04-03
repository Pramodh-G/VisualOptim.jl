# VisualOptim

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://Pramodh-G.github.io/VisualOptim.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://Pramodh-G.github.io/VisualOptim.jl/dev)
[![Build Status](https://travis-ci.com/Pramodh-G/VisualOptim.jl.svg?branch=master)](https://travis-ci.com/Pramodh-G/VisualOptim.jl)
[![Coverage Status](https://coveralls.io/repos/github/Pramodh-G/VisualOptim.jl/badge.svg?branch=master)](https://coveralls.io/github/Pramodh-G/VisualOptim.jl?branch=master)

A Julia port of the [Pytorch-Optim](https://github.com/jettify/pytorch-optimizer) library. Purely pedagogical, but will maybe add Flux Interopability in the future. Stay tuned!

Pure Julia implementations of various Gradient Descent based Optimizers, along with visualizations on some functions listed [here](https://en.wikipedia.org/wiki/Test_functions_for_optimization).

Visualization support is only for `x` where `x isa AbstractVector && len(x)==2`

Gradient Calculations based on [ForwardDiff.jl](https://github.com/JuliaDiff/ForwardDiff.jl)

## TO-DO

- [x] Add basic tester functions
- [x] `SGD`
- [x] Construct optimization loop.
- [ ] Deploy visualizations using binder + Pluto.jl
- [ ] Other basic Optimizsrs
- [ ] One Advanced Optimiser
- [ ] Learning Rate and Weight decays
- [ ] Composability
- [ ] Research-y Optimisers
