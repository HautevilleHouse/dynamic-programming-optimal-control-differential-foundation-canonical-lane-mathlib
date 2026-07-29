import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

structure HamiltonJacobiPDEPackage where
  timeVariable : Type u
  stateVariable : Type v
  hamiltonian : Type w
  pde : Prop
  viscositySolution : Prop

structure HamiltonJacobiPDEEvidence (H : HamiltonJacobiPDEPackage) where
  pdeClosed : H.pde
  viscositySolutionClosed : H.viscositySolution

def HamiltonJacobiPDEClosed (H : HamiltonJacobiPDEPackage) : Prop :=
  H.pde ∧ H.viscositySolution

theorem hamilton_jacobi_pde_closed_from_evidence (H : HamiltonJacobiPDEPackage)
    (E : HamiltonJacobiPDEEvidence H) : HamiltonJacobiPDEClosed H :=
  And.intro E.pdeClosed E.viscositySolutionClosed

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse
