import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure AdmittedObject where
  stateSpace : Type
  controlSpace : Type
  dynamics : Prop
  costFunctional : Prop
  optimalSolution : Prop
  conclusion : optimalSolution

def AdmittedObjectClosed (O : AdmittedObject) : Prop :=
  O.optimalSolution

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
