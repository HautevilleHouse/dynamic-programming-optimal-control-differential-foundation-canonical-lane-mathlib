import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure DifferentialDynamicsPackage where
  stateSpace : Type u
  controlSpace : Type v
  flow : Type w
  controllability : Prop
  stability : Prop

structure DifferentialDynamicsEvidence (D : DifferentialDynamicsPackage) where
  controllabilityClosed : D.controllability
  stabilityClosed : D.stability

def DifferentialDynamicsClosed (D : DifferentialDynamicsPackage) : Prop :=
  D.controllability ∧ D.stability

theorem differential_dynamics_closed_from_evidence (D : DifferentialDynamicsPackage)
    (E : DifferentialDynamicsEvidence D) : DifferentialDynamicsClosed D :=
  And.intro E.controllabilityClosed E.stabilityClosed

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
