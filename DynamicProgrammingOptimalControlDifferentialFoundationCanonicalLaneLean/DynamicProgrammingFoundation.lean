import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure DPState where
  stateSpace : Type u
  actionSpace : Type v
  transition : stateSpace → actionSpace → stateSpace
  reward : stateSpace → actionSpace → ℝ
  discount : ℝ
  initialDistribution : stateSpace → ℝ

definition DPReturn (s₀ : stateSpace) (policy : stateSpace → actionSpace) : ℝ :=
  ∑' t, (discount ^ t) * reward (iterateTransition s₀ policy t) (policy (iterateTransition s₀ policy t))

structure OptimalPolicy (s₀ : stateSpace) where
  policy : stateSpace → actionSpace
  optimalReturn : ℝ
  optimalityProof : ∀ (altPolicy : stateSpace → actionSpace), DPReturn s₀ policy ≥ DPReturn s₀ altPolicy

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse