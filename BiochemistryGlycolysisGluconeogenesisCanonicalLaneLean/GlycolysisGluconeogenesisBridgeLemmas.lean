import BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean.GlycolysisGluconeogenesisAdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (A.object.glycolysisFlux ∧ A.object.gluconeogenesisFlux ∧ A.object.regulationStatus)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.glycolysisFlux (And.intro A.object.gluconeogenesisFlux A.object.regulationStatus)

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse