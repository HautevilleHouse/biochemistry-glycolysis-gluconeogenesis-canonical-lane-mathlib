import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

def ConstrainedGlycolysisGluconeogenesisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_glycolysis_gluconeogenesis_endgame (A : AdmissibleClass) :
    ConstrainedGlycolysisGluconeogenesisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse