module Survival

using Compat
using Distributions
using LinearAlgebra
using Optim
using StatsBase
using StatsModels

export
    EventTime,
    isevent,
    iscensored,

    NonparametricEstimator,
    KaplanMeier,
    NelsonAalen,
    fit,
    confint,

    CoxModel,
    coxph,
    coef,
    loglikelihood,
    nullloglikelihood,
    nobs,
    dof,
    vcov,
    stderror


abstract type AbstractEstimator end
abstract type NonparametricEstimator <: AbstractEstimator end

include("eventtimes.jl")
include("estimator.jl")
include("kaplanmeier.jl")
include("nelsonaalen.jl")
include("cox.jl")

end # module
