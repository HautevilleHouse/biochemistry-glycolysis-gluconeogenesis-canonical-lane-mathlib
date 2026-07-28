import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure GluconeogenesisPathwayPackage where
  pyruvateCarboxylaseActive : Prop
  pepCarboxykinaseActive : Prop
  fructose16BisphosphataseActive : Prop
  glucose6PhosphataseActive : Prop
  lactateToGlucoseFlux : Prop
  atpConsumption : Prop
  gtpConsumption : Prop

structure GluconeogenesisPathwayEvidence (P : GluconeogenesisPathwayPackage) where
  pyruvateCarboxylaseActiveClosed : P.pyruvateCarboxylaseActive
  pepCarboxykinaseActiveClosed : P.pepCarboxykinaseActive
  fructose16BisphosphataseActiveClosed : P.fructose16BisphosphataseActive
  glucose6PhosphataseActiveClosed : P.glucose6PhosphataseActive
  lactateToGlucoseFluxClosed : P.lactateToGlucoseFlux
  atpConsumptionClosed : P.atpConsumption
  gtpConsumptionClosed : P.gtpConsumption

def GluconeogenesisPathwayClosed (P : GluconeogenesisPathwayPackage) : Prop :=
  P.pyruvateCarboxylaseActive ∧ P.pepCarboxykinaseActive ∧ P.fructose16BisphosphataseActive ∧
  P.glucose6PhosphataseActive ∧ P.lactateToGlucoseFlux ∧ P.atpConsumption ∧ P.gtpConsumption

theorem gluconeogenesis_pathway_closed_from_evidence (P : GluconeogenesisPathwayPackage) (E : GluconeogenesisPathwayEvidence P) :
  GluconeogenesisPathwayClosed P := by
  exact And.intro E.pyruvateCarboxylaseActiveClosed (And.intro E.pepCarboxykinaseActiveClosed
    (And.intro E.fructose16BisphosphataseActiveClosed (And.intro E.glucose6PhosphataseActiveClosed
      (And.intro E.lactateToGlucoseFluxClosed (And.intro E.atpConsumptionClosed E.gtpConsumptionClosed)))))

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse