import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure VerificationTheoremPackage where
  valueFunction : Type u
  hjbSolution : Prop
  controlPolicy : Type v
  optimality : Prop

structure VerificationTheoremEvidence (V : VerificationTheoremPackage) where
  hjbSolutionClosed : V.hjbSolution
  optimalityClosed : V.optimality

def VerificationTheoremClosed (V : VerificationTheoremPackage) : Prop :=
  V.hjbSolution ∧ V.optimality

theorem verification_theorem_closed_from_evidence (V : VerificationTheoremPackage)
    (E : VerificationTheoremEvidence V) : VerificationTheoremClosed V :=
  And.intro E.hjbSolutionClosed E.optimalityClosed

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
