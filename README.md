# VisualOptim

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://Pramodh-G.github.io/VisualOptim.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://Pramodh-G.github.io/VisualOptim.jl/dev)
[![Build Status](https://travis-ci.com/Pramodh-G/VisualOptim.jl.svg?branch=master)](https://travis-ci.com/Pramodh-G/VisualOptim.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/Pramodh-G/VisualOptim.jl?svg=true)](https://ci.appveyor.com/project/Pramodh-G/VisualOptim-jl)
[![Coverage](https://codecov.io/gh/Pramodh-G/VisualOptim.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/Pramodh-G/VisualOptim.jl)

A Julia port of the [Pytorch-Optim](https://github.com/jettify/pytorch-optimizer) library. Purely pedagogical, but will maybe add Flux Interopability in the future. Stay tuned!

Pure Julia implementations of various Gradient Descent based Optimizers, along with visualizations on some functions listed [here](https://en.wikipedia.org/wiki/Test_functions_for_optimization).

The parameters that can be passed to the optimizers are limited to only `Vector` with 2 elements, since the results can only be visualized then. Support for `Vector` with more elements will be added soon.

Gradient Calculations based on [Zygote.jl](https://github.com/FluxML/Zygote.jl)

## TO-DO

- [ ] `SGD`
- [ ] Add basic tester functions
- [ ] Deploy visualizations using binder + Pluto.jl
- [ ] Other basic Optimizsrs
- [ ] One Advanced Optimiser
- [ ] Learning Rate and Weight decays
- [ ] Composability
- [ ] Research-y Optimisers