import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure LQRParameters where
  A : ℝ^(n×n)
  B : ℝ^(n×m)
  Q : ℝ^(n×n)
  R : ℝ^(m×m)
  S : ℝ^(n×n) -- terminal cost
  t0 : ℝ
  tf : ℝ

structure RiccatiSolution where
  P : ℝ → ℝ^(n×n)
  satisfiesRiccatiEquation : ∀ t ∈ [t0, tf], dP/dt = -A^T P - P A + P B R^{-1} B^T P - Q
  terminalCondition : P tf = S

structure LQROptimalController where
  gain : ℝ → ℝ^(m×n)
  optimalGain : ∀ t, gain t = -R^{-1} B^T P t
  valueFunction : ℝ × ℝ^n → ℝ
  valueQuadratic : valueFunction(t, x) = x^T P t x

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse