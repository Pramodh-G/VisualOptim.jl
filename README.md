# VisualOptim

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://Pramodh-G.github.io/VisualOptim.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://Pramodh-G.github.io/VisualOptim.jl/dev)
[![Build Status](https://travis-ci.com/Pramodh-G/VisualOptim.jl.svg?branch=master)](https://travis-ci.com/Pramodh-G/VisualOptim.jl)
[![Coverage Status](https://coveralls.io/repos/github/Pramodh-G/VisualOptim.jl/badge.svg?branch=master)](https://coveralls.io/github/Pramodh-G/VisualOptim.jl?branch=master)

A Julia port of the [Pytorch-Optim](https://github.com/jettify/pytorch-optimizer) library. Purely pedagogical, but will maybe add Flux Interopability in the future. Stay tuned!

Pure Julia implementations of various Gradient Descent based Optimizers, along with visualizations on some functions listed [here](https://en.wikipedia.org/wiki/Test_functions_for_optimization).

All inputs are to be passed as a static vector by default, to take advantage of stack allocation and increase speed of execution

The parameters that can be passed to the optimizers are limited to only `Vector` with 2 elements, since the results can only be visualized then. Support for `Vector` with more elements will be added soon.

Gradient Calculations based on [Zygote.jl](https://github.com/FluxML/Zygote.jl)

## TO-DO

- [ ] Add StaticArrays.jl support
- [ ] `SGD`
- [ ] Add basic tester functions
- [ ] Deploy visualizations using binder + Pluto.jl
- [ ] Other basic Optimizsrs
- [ ] One Advanced Optimiser
- [ ] Learning Rate and Weight decays
- [ ] Composability
- [ ] Research-y Optimisers
