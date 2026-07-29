import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure HamiltonJacobiBellmanPDE (X : Type u) [TopologicalSpace X] [NormedAddCommGroup X] where
  infinitesimalGenerator : (X → ℝ) → (X → ℝ)
  hjbEquation : Prop
  viscositySolution : Prop
  comparisonPrinciple : Prop
  uniquenessResult : Prop
  infinitesimalGeneratorTerm : (X → ℝ) → (X → ℝ)
  hjbEquationTerm : hjbEquation
  viscositySolutionTerm : viscositySolution
  comparisonPrincipleTerm : comparisonPrinciple
  uniquenessResultTerm : uniquenessResult

structure HJBPackage (X : Type u) [TopologicalSpace X] [NormedAddCommGroup X] where
  pde : HamiltonJacobiBellmanPDE X
  smoothApproximation : Prop
  convergenceRate : Prop
  smoothApproximationTerm : smoothApproximation
  convergenceRateTerm : convergenceRate

structure HJBEvidence (X : Type u) [TopologicalSpace X] [NormedAddCommGroup X] (H : HJBPackage X) where
  smoothApproximationClosed : H.smoothApproximation
  convergenceRateClosed : H.convergenceRate

def HJBClosed (X : Type u) [TopologicalSpace X] [NormedAddCommGroup X] (H : HJBPackage X) : Prop :=
  H.smoothApproximation ∧ H.convergenceRate

theorem hjb_closed_from_evidence (X : Type u) [TopologicalSpace X] [NormedAddCommGroup X] (H : HJBPackage X) (E : HJBEvidence H) :
    HJBClosed H := by
  exact And.intro E.smoothApproximationClosed E.convergenceRateClosed

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse