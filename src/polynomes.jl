using SpecialPolynomials

# Chebyshev polynomials
function chebychev(n::I, x::F) where {I, F <: AbstractFloat}

    return basis.(SpecialPolynomials.Chebyshev, n)(x)
end

function dchebychev(n::I, x::F) where {I, F <: AbstractFloat}

    if n > 0
        return n * basis.(SpecialPolynomials.ChebyshevU, n-1)(x)
    else
        return 0
    end
end

# Shifted chebychev polynomials
function schebychev(n::I, x::F, a::F, b::F) where {I, F <: AbstractFloat}

    xs = 2 * (x - a) / (b - a) - 1
    return basis.(SpecialPolynomials.Chebyshev, n)(xs)
end

function dschebychev(n::I, x::F, a::F, b::F) where {I, F <: AbstractFloat}
    
    xs = 2 * (x - a) / (b - a) - 1
    if n > 0
        return 2 / (b - a) * n * basis.(SpecialPolynomials.ChebyshevU, n-1)(xs)
    else
        return 0
    end
end

function intschebychev(n::I, a::F, b::F) where {I, F <: AbstractFloat}

    if n == 1
        return 0
    else
        return (b - a) / 2 * ((-1)^n + 1) / (1 - n^2)
    end
end
