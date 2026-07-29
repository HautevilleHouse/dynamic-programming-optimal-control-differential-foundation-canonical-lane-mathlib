import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure ControlActionSpace (U : Type u) [TopologicalSpace U] where
  actionSpace : Type u
  topology : TopologicalSpace actionSpace
  borelSigmaAlgebra : Prop
  controlConstraints : Prop
  borelSigmaAlgebraTerm : borelSigmaAlgebra
  controlConstraintsTerm : controlConstraints

structure ControlActionPackage (U : Type u) [TopologicalSpace U] where
  space : ControlActionSpace U
  admissibleControls : Prop
  controlSet : Prop
  admissibleControlsTerm : admissibleControls
  controlSetTerm : controlSet

structure ControlActionEvidence (U : Type u) [TopologicalSpace U] (C : ControlActionPackage U) where
  admissibleControlsClosed : C.admissibleControls
  controlSetClosed : C.controlSet

def ControlActionClosed (U : Type u) [TopologicalSpace U] (C : ControlActionPackage U) : Prop :=
  C.admissibleControls ∧ C.controlSet

theorem control_action_closed_from_evidence (U : Type u) [TopologicalSpace U] (C : ControlActionPackage U) (E : ControlActionEvidence C) :
    ControlActionClosed C := by
  exact And.intro E.admissibleControlsClosed E.controlSetClosed

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse