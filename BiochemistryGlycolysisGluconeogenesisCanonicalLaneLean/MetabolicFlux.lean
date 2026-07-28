import EnzymeKinetics.lean

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure MetabolicFluxPackage {G : GlycolysisPathwayPackage}
    (F : EnzymeKineticsPackage G) where
  fluxDistribution : Type u
  steadyStateCondition : Prop
  thermodynamicFeasibility : Prop
  exchangeFluxes : Prop

structure MetabolicFluxEvidence {G : GlycolysisPathwayPackage}
    {F : EnzymeKineticsPackage G} (S : MetabolicFluxPackage F) where
  steadyStateConditionClosed : S.steadyStateCondition
  thermodynamicFeasibilityClosed : S.thermodynamicFeasibility
  exchangeFluxesClosed : S.exchangeFluxes

def MetabolicFluxClosed {G : GlycolysisPathwayPackage}
    {F : EnzymeKineticsPackage G} (S : MetabolicFluxPackage F) : Prop :=
  S.steadyStateCondition ∧ S.thermodynamicFeasibility ∧ S.exchangeFluxes

theorem metabolic_flux_closed_from_evidence
    {G : GlycolysisPathwayPackage} {F : EnzymeKineticsPackage G}
    (S : MetabolicFluxPackage F) (E : MetabolicFluxEvidence S) :
    MetabolicFluxClosed S := by
  exact And.intro E.steadyStateConditionClosed
    (And.intro E.thermodynamicFeasibilityClosed E.exchangeFluxesClosed)

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse