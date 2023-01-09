# Generalied Gaussian Quadrature
This package is an implementation of the algorithm presented by Ma et all. in [GENERALIZED GAUSSIAN QUADRATURE RULES FOR SYSTEMS OF ARBITRARY FUNCTIONS](https://www.jstor.org/stable/2158491#metadata_info_tab_contents). Slight modification were made, but the general concept is identical. 

## Gaussian Quadrature Rules
Gaussian quadrature is a numerical integration technique integrating polynomials up to order $2n-1$, where $n$ is the order of the quadrature rule, exactly. Generalized gaussian quadrature extends this technique to integrate square-root functions and functions with endpoint-singularities exactly.

## Generalized Gaussian Quadrature Rules
The generalized Gaussian quadrature rules of degree n for the system $1, \ln(x), x, x \ln(x), x^2, x^2 \ln(x), \dots, x^n$ can be obtained by 
```
x, w = generalizedquadrature(n::Int)
```
