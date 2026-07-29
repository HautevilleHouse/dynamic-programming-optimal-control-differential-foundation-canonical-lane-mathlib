import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure PMPState where
  state : ℝ^n
  costate : ℝ^n
  control : ℝ^m
  hamiltonian : ℝ^n × ℝ^n × ℝ^m → ℝ
  dynamics : ℝ^n × ℝ^m → ℝ^n
  terminalCost : ℝ^n → ℝ
  terminalConstraint : ℝ^n → ℝ^k

structure PMPNecessaryConditions where
  adjointEquation : costate' t = -∇ₓ Hamiltonian (state t, costate t, control t)
  stationarityCondition : ∇ᵤ Hamiltonian (state t, costate t, control t) = 0
  transversality : costate t_f = ∇ terminalCost (state t_f) + (Jacobian terminalConstraint).T * λ

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse