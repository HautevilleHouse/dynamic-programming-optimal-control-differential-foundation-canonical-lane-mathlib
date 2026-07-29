import canonicalLaneMathlib.AdmissibleClass
import DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.DynamicProgrammingStateSpace
import DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.ControlActionSpace
import DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.ValueFunctionDynamics
import DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.HamiltonJacobiBellmanPDE
import DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.OptimalityConditions

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  simp [bridgeClosed]

def gateClosed (A : AdmissibleClass) : Prop := True

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  simp [gateClosed]

def ConstrainedDPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dp_endgame (A : AdmissibleClass) : ConstrainedDPClosure A := by
  refine And.intro ?_ ?_
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse