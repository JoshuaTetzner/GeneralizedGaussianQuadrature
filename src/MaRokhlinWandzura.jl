module MaRokhlinWandzura

using Base.Threads 
using LinearAlgebra
using SpecialPolynomials

include("nestedchebyshevapprox.jl")
include("errorcorrection.jl")
include("generalizedquadrature.jl")
include("orthonormal.jl")
include("polynomes.jl")

include("quadrature/gqlog.jl")

export correctlog
export nestedquadrature
export nestedsystem
export gramschmidt

export generalizedquadrature

end # module MaRokhlinWandzura
