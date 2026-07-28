import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure RegulatoryInteractionsPackage where
  insulinStimulatesGlycolysis : Prop
  glucagonStimulatesGluconeogenesis : Prop
  fructose26BisphosphateActivatesPFK : Prop
  fructose26BisphosphateInhibitsFBPase : Prop
  citrateInhibitsPFK : Prop
  atpInhibitsPFK : Prop
  ampActivatesPFK : Prop
  acetylCoAActivatesPyruvateCarboxylase : Prop

structure RegulatoryInteractionsEvidence (R : RegulatoryInteractionsPackage) where
  insulinStimulatesGlycolysisClosed : R.insulinStimulatesGlycolysis
  glucagonStimulatesGluconeogenesisClosed : R.glucagonStimulatesGluconeogenesis
  fructose26BisphosphateActivatesPFKClosed : R.fructose26BisphosphateActivatesPFK
  fructose26BisphosphateInhibitsFBPaseClosed : R.fructose26BisphosphateInhibitsFBPase
  citrateInhibitsPFKClosed : R.citrateInhibitsPFK
  atpInhibitsPFKClosed : R.atpInhibitsPFK
  ampActivatesPFKClosed : R.ampActivatesPFK
  acetylCoAActivatesPyruvateCarboxylaseClosed : R.acetylCoAActivatesPyruvateCarboxylase

def RegulatoryInteractionsClosed (R : RegulatoryInteractionsPackage) : Prop :=
  R.insulinStimulatesGlycolysis ∧ R.glucagonStimulatesGluconeogenesis ∧
  R.fructose26BisphosphateActivatesPFK ∧ R.fructose26BisphosphateInhibitsFBPase ∧
  R.citrateInhibitsPFK ∧ R.atpInhibitsPFK ∧ R.ampActivatesPFK ∧
  R.acetylCoAActivatesPyruvateCarboxylase

theorem regulatory_interactions_closed_from_evidence (R : RegulatoryInteractionsPackage) (E : RegulatoryInteractionsEvidence R) :
  RegulatoryInteractionsClosed R := by
  exact And.intro E.insulinStimulatesGlycolysisClosed (And.intro E.glucagonStimulatesGluconeogenesisClosed
    (And.intro E.fructose26BisphosphateActivatesPFKClosed (And.intro E.fructose26BisphosphateInhibitsFBPaseClosed
      (And.intro E.citrateInhibitsPFKClosed (And.intro E.atpInhibitsPFKClosed
        (And.intro E.ampActivatesPFKClosed E.acetylCoAActivatesPyruvateCarboxylaseClosed))))))

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse