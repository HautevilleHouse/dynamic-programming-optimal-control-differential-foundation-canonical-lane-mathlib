import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.ControlDifferentialLieStructure

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure HamiltonJacobiPackage where
  valueFunctionType : Type u
  hjbEquationFormulated : Prop
  viscositySolutionDefined : Prop
  optimalFeedbackConstructed : Prop
  hjbEquationClosed : hjbEquationFormulated
  viscositySolutionClosed : viscositySolutionDefined
  optimalFeedbackClosed : optimalFeedbackConstructed

structure HamiltonJacobiEvidence (H : HamiltonJacobiPackage) where
  hjbEquationClosed : H.hjbEquationFormulated
  viscositySolutionClosed : H.viscositySolutionDefined
  optimalFeedbackClosed : H.optimalFeedbackConstructed

def HamiltonJacobiClosed (H : HamiltonJacobiPackage) : Prop :=
  H.hjbEquationFormulated ∧ H.viscositySolutionDefined ∧ H.optimalFeedbackConstructed

theorem hamilton_jacobi_closed_from_evidence (H : HamiltonJacobiPackage)
    (E : HamiltonJacobiEvidence H) : HamiltonJacobiClosed H := by
  exact And.intro E.hjbEquationClosed
    (And.intro E.viscositySolutionClosed E.optimalFeedbackClosed)

def ConstrainedHamiltonJacobiClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_hamilton_jacobi_endgame (A : AdmissibleClass) :
    ConstrainedHamiltonJacobiClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse