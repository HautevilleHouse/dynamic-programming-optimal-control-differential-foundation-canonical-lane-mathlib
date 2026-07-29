import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure ValueFunctionDynamics (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] where
  stageCost : X × U → ℝ
  discountFactor : ℝ
  transitionDynamics : X × U → X
  valueFunction : X → ℝ
  bellmanEquation : Prop
  optimalityPrinciple : Prop
  stageCostTerm : X × U → ℝ
  discountFactorTerm : ℝ
  transitionDynamicsTerm : X × U → X
  valueFunctionTerm : X → ℝ
  bellmanEquationTerm : bellmanEquation
  optimalityPrincipleTerm : optimalityPrinciple

structure ValueFunctionPackage (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] where
  dynamics : ValueFunctionDynamics X U
  continuityProperties : Prop
  contractionProperty : Prop
  continuityPropertiesTerm : continuityProperties
  contractionPropertyTerm : contractionProperty

structure ValueFunctionEvidence (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] (V : ValueFunctionPackage X U) where
  continuityPropertiesClosed : V.continuityProperties
  contractionPropertyClosed : V.contractionProperty

def ValueFunctionClosed (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] (V : ValueFunctionPackage X U) : Prop :=
  V.continuityProperties ∧ V.contractionProperty

theorem value_function_closed_from_evidence (X U : Type u) [TopologicalSpace X] [TopologicalSpace U] (V : ValueFunctionPackage X U) (E : ValueFunctionEvidence V) :
    ValueFunctionClosed V := by
  exact And.intro E.continuityPropertiesClosed E.contractionPropertyClosed

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse