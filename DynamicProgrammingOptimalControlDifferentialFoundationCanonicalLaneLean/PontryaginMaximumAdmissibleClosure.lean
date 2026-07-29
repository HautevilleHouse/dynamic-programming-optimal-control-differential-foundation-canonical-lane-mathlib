import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.ControlDifferentialLieStructure

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure PontryaginPackage where
  costateType : Type u
  hamiltonianFormulated : Prop
  adjointEquationDerived : Prop
  transversalityCondition : Prop
  maximumPrincipleProven : Prop
  hamiltonianClosed : hamiltonianFormulated
  adjointEquationClosed : adjointEquationDerived
  transversalityClosed : transversalityCondition
  maximumPrincipleClosed : maximumPrincipleProven

structure PontryaginEvidence (P : PontryaginPackage) where
  hamiltonianClosed : P.hamiltonianFormulated
  adjointEquationClosed : P.adjointEquationDerived
  transversalityClosed : P.transversalityCondition
  maximumPrincipleClosed : P.maximumPrincipleProven

def PontryaginClosed (P : PontryaginPackage) : Prop :=
  P.hamiltonianFormulated ∧ P.adjointEquationDerived ∧ P.transversalityCondition ∧ P.maximumPrincipleProven

theorem pontryagin_closed_from_evidence (P : PontryaginPackage)
    (E : PontryaginEvidence P) : PontryaginClosed P := by
  exact And.intro E.hamiltonianClosed
    (And.intro E.adjointEquationClosed
      (And.intro E.transversalityClosed E.maximumPrincipleClosed))

def ConstrainedPontryaginClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_pontryagin_endgame (A : AdmissibleClass) :
    ConstrainedPontryaginClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse