import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

def ConstrainedOptimalControlClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_optimal_control_endgame (A : AdmissibleClass) :
    ConstrainedOptimalControlClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse