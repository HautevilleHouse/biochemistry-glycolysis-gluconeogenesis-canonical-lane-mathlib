import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean.GlycolysisPathway

/-!
# Gluconeogenesis Pathway Package
-/

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure GluconeogenesisPackage {A : AdmissibleClass} (G : GlycolysisPackage A) where
  pyruvateToGlucose : Prop
  reversalSteps : Prop
  energyCost : Prop
  regulationDistinct : Prop

structure GluconeogenesisEvidence {A : AdmissibleClass} {G : GlycolysisPackage A}
    (P : GluconeogenesisPackage G) where
  pyruvateToGlucoseClosed : P.pyruvateToGlucose
  reversalStepsClosed : P.reversalSteps
  energyCostClosed : P.energyCost
  regulationDistinctClosed : P.regulationDistinct

def GluconeogenesisClosed {A : AdmissibleClass} {G : GlycolysisPackage A}
    (P : GluconeogenesisPackage G) : Prop :=
  P.pyruvateToGlucose ∧ P.reversalSteps ∧ P.energyCost ∧ P.regulationDistinct

theorem gluconeogenesis_closed_from_evidence
    {A : AdmissibleClass} {G : GlycolysisPackage A}
    (P : GluconeogenesisPackage G) (E : GluconeogenesisEvidence P) :
    GluconeogenesisClosed P := by
  exact And.intro E.pyruvateToGlucoseClosed
    (And.intro E.reversalStepsClosed
      (And.intro E.energyCostClosed E.regulationDistinctClosed))

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse