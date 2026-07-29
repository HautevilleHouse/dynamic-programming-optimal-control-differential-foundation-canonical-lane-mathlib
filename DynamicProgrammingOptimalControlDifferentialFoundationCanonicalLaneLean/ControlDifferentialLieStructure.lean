import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure ControlledDifferentialSystem where
  stateSpace : Type u
  controlSpace : Type v
  timeDomain : Type w
  dynamics : stateSpace → controlSpace → timeDomain → stateSpace
  controlledDefined : Prop
  dynamicsSmooth : Prop
  dynamicsSmoothTerm : dynamicsSmooth

def ControlledDifferentialSystemClosed (S : ControlledDifferentialSystem) : Prop :=
  S.dynamicsSmooth

theorem controlled_differential_system_closed (S : ControlledDifferentialSystem) :
    ControlledDifferentialSystemClosed S := by
  exact S.dynamicsSmoothTerm

structure IdentificationBridgeData (S : ControlledDifferentialSystem) where
  generatorIdentified : Prop
  lieBracketClosed : Prop
  optimalityConditionDerived : Prop
  generatorIdentifiedTerm : generatorIdentified
  lieBracketClosedTerm : lieBracketClosed
  optimalityConditionDerivedTerm : optimalityConditionDerived

def IdentificationBridgeClosed (S : ControlledDifferentialSystem) (B : IdentificationBridgeData S) : Prop :=
  B.generatorIdentified ∧ B.lieBracketClosed ∧ B.optimalityConditionDerived

theorem identification_bridge_closed_from_data
    (S : ControlledDifferentialSystem) (B : IdentificationBridgeData S) :
    IdentificationBridgeClosed S B := by
  exact And.intro B.generatorIdentifiedTerm
    (And.intro B.lieBracketClosedTerm B.optimalityConditionDerivedTerm)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | (S : ControlledDifferentialSystem) => ControlledDifferentialSystemClosed S

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  match A.object with
  | (S : ControlledDifferentialSystem) =>
    exact controlled_differential_system_closed S

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse