import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure PontryaginMaximumPrinciple (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] [NormedAddCommGroup X] where
  hamiltonian : X × U × (X → ℝ) → ℝ
  adjointEquation : Prop
  optimalityCondition : Prop
  transversalityCondition : Prop
  hamiltonianTerm : X × U × (X → ℝ) → ℝ
  adjointEquationTerm : adjointEquation
  optimalityConditionTerm : optimalityCondition
  transversalityConditionTerm : transversalityCondition

structure OptimalityPackage (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] [NormedAddCommGroup X] where
  pmp : PontryaginMaximumPrinciple X U
  necessaryConditions : Prop
  sufficientConditions : Prop
  necessaryConditionsTerm : necessaryConditions
  sufficientConditionsTerm : sufficientConditions

structure OptimalityEvidence (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] [NormedAddCommGroup X] (O : OptimalityPackage X U) where
  necessaryConditionsClosed : O.necessaryConditions
  sufficientConditionsClosed : O.sufficientConditions

def OptimalityClosed (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] [NormedAddCommGroup X] (O : OptimalityPackage X U) : Prop :=
  O.necessaryConditions ∧ O.sufficientConditions

theorem optimality_closed_from_evidence (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] [NormedAddCommGroup X] (O : OptimalityPackage X U) (E : OptimalityEvidence O) :
    OptimalityClosed O := by
  exact And.intro E.necessaryConditionsClosed E.sufficientConditionsClosed

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse