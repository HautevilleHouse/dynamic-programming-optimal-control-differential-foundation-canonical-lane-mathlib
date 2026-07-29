import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure OptimalControlAdmittedObject where
  stateSpace : Type
  controlSpace : Type
  dynamics : stateSpace → controlSpace → stateSpace
  costFunctional : (stateSpace → ℝ) → Prop
  valueFunctionSatisfiesHJB : Prop
  conclusion : valueFunctionSatisfiesHJB

def OptimalControlWitnessClosed (O : OptimalControlAdmittedObject) : Prop :=
  O.valueFunctionSatisfiesHJB

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse