import DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure ControlDynamics where
  stateEq : Prop
  controlInput : Prop
  differentialConstraint : Prop
  terminalCondition : Prop

structure HamiltonJacobiBellmanEq where
  valueFunction : Prop
  partialDifferentialEquation : Prop
  viscositySolution : Prop

structure VerificationTheorem where
  candidateControl : Prop
  costComparison : Prop
  optimalityCondition : Prop

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
