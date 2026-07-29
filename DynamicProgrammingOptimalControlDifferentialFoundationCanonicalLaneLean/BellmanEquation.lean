import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure BellmanOperator (V : stateSpace → ℝ) : stateSpace → ℝ where
  apply : stateSpace → ℝ
  monotonicity : ∀ (s : stateSpace), apply s = maxᵃ (a : actionSpace), reward s a + discount * V (transition s a)

structure BellmanEquationSolution where
  valueFunction : stateSpace → ℝ
  fixedPoint : ∀ (s : stateSpace), valueFunction s = (BellmanOperator valueFunction).apply s
  contractionProperty : ∃ (β : ℝ), β < 1 ∧ LipschitzConstant (BellmanOperator) ≤ β

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse