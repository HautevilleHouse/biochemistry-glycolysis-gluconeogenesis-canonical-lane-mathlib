import BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean.EnzymeKinetics

/-!
# Regulation Mechanisms Package
-/

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure RegulationMechanismsPackage where
  hormonalControl : Prop
  insulinEffect : Prop
  glucagonEffect : Prop
  allostericEffectors : Prop
  fructose26Bisphosphate : Prop
  covalentModification : Prop
  geneExpressionControl : Prop
  reciprocalRegulation : Prop
  metabolicSignaling : Prop

structure RegulationMechanismsEvidence (R : RegulationMechanismsPackage) where
  hormonalControlClosed : R.hormonalControl
  insulinEffectClosed : R.insulinEffect
  glucagonEffectClosed : R.glucagonEffect
  allostericEffectorsClosed : R.allostericEffectors
  fructose26BisphosphateClosed : R.fructose26Bisphosphate
  covalentModificationClosed : R.covalentModification
  geneExpressionControlClosed : R.geneExpressionControl
  reciprocalRegulationClosed : R.reciprocalRegulation
  metabolicSignalingClosed : R.metabolicSignaling

def RegulationMechanismsClosed (R : RegulationMechanismsPackage) : Prop :=
  R.hormonalControl ∧ R.insulinEffect ∧ R.glucagonEffect ∧
  R.allostericEffectors ∧ R.fructose26Bisphosphate ∧
  R.covalentModification ∧ R.geneExpressionControl ∧
  R.reciprocalRegulation ∧ R.metabolicSignaling

theorem regulation_mechanisms_closed_from_evidence
    (R : RegulationMechanismsPackage)
    (E : RegulationMechanismsEvidence R) :
    RegulationMechanismsClosed R := by
  exact And.intro E.hormonalControlClosed
    (And.intro E.insulinEffectClosed
      (And.intro E.glucagonEffectClosed
        (And.intro E.allostericEffectorsClosed
          (And.intro E.fructose26BisphosphateClosed
            (And.intro E.covalentModificationClosed
              (And.intro E.geneExpressionControlClosed
                (And.intro E.reciprocalRegulationClosed
                  E.metabolicSignalingClosed)))))))

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse