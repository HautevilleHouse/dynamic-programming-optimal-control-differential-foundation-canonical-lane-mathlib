import DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DPOCSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DPOCAdmittedObject where
  space : DPOCSpace
  controlSystem : Prop
  optimalValueFunction : Prop
  differentialConstraint : Prop
  endpointReached : Prop
  conclusion : endpointReached

structure DPOCEndgameState where
  object : DPOCAdmittedObject

def DPOCWitnessClosed (O : DPOCAdmittedObject) : Prop :=
  O.endpointReached

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse