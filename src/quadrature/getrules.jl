
#Error messages

mutable struct GQExeptionDegree <: Exception
end


Base.showerror(io::IO, e::GQExeptionDegree) = print(
    io,
    "Only quadratures of degree 3, 4, 5, 6, 7, 8, 9, 10, 15, 20, 25 and 30 available."
)

function generalizedquadrature(n::Int)
    rules = [15, 20, 25, 30]
    if n >= 3 && n <= 10
        return gqlogx[n-2], gqlogw[n-2] 
    else
        if n in rules
            gqlogx[8+Int((n-10)/5)], gqlogw[8+Int((n-10)/5)] 
        else
            throw(GQExptionDegree())
        end
    end
end
