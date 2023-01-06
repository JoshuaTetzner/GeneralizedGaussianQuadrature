module MaRokhlinWandzura

using Base.Threads 
using FastGaussQuadrature
using LinearAlgebra
using SpecialPolynomials

include("nestedchebyshevapprox.jl")
include("generalizedquadrature.jl")
include("orthonormal.jl")
include("errorcorrection.jl")

include("quadrature/getrules.jl")

export correctlog
export nestedquadrature
export nestedsystem
export gramschmidt

export generalizedquadrature

end # module MaRokhlinWandzura
