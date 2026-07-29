import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure DynamicProgrammingSpace (X : Type u) [TopologicalSpace X] where
  stateSpace : Type u
  topology : TopologicalSpace stateSpace
  borelSigmaAlgebra : Prop
  topologicalProperties : Prop
  borelSigmaAlgebraTerm : borelSigmaAlgebra
  topologicalPropertiesTerm : topologicalProperties

structure DPStateSpacePackage (X : Type u) [TopologicalSpace X] where
  space : DynamicProgrammingSpace X
  initialDistribution : Prop
  transitionKernel : Prop
  initialDistributionTerm : initialDistribution
  transitionKernelTerm : transitionKernel

structure DPStateSpaceEvidence (X : Type u) [TopologicalSpace X] (P : DPStateSpacePackage X) where
  initialDistributionClosed : P.initialDistribution
  transitionKernelClosed : P.transitionKernel

def DPStateSpaceClosed (X : Type u) [TopologicalSpace X] (P : DPStateSpacePackage X) : Prop :=
  P.initialDistribution ∧ P.transitionKernel

theorem dp_state_space_closed_from_evidence (X : Type u) [TopologicalSpace X] (P : DPStateSpacePackage X) (E : DPStateSpaceEvidence P) :
    DPStateSpaceClosed P := by
  exact And.intro E.initialDistributionClosed E.transitionKernelClosed

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse