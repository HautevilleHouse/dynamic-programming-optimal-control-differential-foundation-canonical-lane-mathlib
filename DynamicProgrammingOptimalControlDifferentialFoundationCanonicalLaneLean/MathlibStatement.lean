import DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure MathlibProofObligation where
  optimalControlProblem : Prop
  dynamicProgrammingPrinciple : Prop
  hjbEquationSolution : Prop
  verificationTheorem : Prop
  optimalControlClosure : ConstrainedOptimalControlClosure A

theorem mathlib_optimal_control_closure_checked :
    ∀ A : AdmissibleClass, ConstrainedOptimalControlClosure A :=
  λ A => constrained_optimal_control_endgame A

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
