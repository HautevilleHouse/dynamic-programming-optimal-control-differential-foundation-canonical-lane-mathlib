import DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean.OptimalControlAdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DPOCWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicProgrammingOptimalControlDifferentialFoundationCanonicalLaneLean
end HautevilleHouse