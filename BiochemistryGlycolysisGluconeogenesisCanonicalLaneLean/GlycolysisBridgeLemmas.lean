import GlycolysisGluconeogenesisAdmissibleClass.lean

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  pathwayWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse