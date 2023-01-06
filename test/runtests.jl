using Test
using MaRokhlinWandzura

@testset "fmm" begin
    include("test_generalizedquadrature.jl")
    include("test_nestedchebyshevapprox.jl")
    include("test_orthonormal.jl")
end