import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure GlycolysisPathwayPackage where
  glucoseConsumed : Nat
  atpProduced : Nat
  nadhProduced : Nat
  pyruvateProduced : Nat
  regulatoryPoints : List String
  pathwayFlux : Float

structure GlycolysisPathwayEvidence (G : GlycolysisPathwayPackage) where
  glucoseConsumedClosed : G.glucoseConsumed > 0
  atpProducedClosed : G.atpProduced > 0
  nadhProducedClosed : G.nadhProduced > 0
  pyruvateProducedClosed : G.pyruvateProduced > 0

def GlycolysisPathwayClosed (G : GlycolysisPathwayPackage) : Prop :=
  G.glucoseConsumed > 0 ∧ G.atpProduced > 0 ∧ G.nadhProduced > 0 ∧ G.pyruvateProduced > 0

theorem glycolysis_pathway_closed_from_evidence (G : GlycolysisPathwayPackage)
    (Ev : GlycolysisPathwayEvidence G) : GlycolysisPathwayClosed G := by
  exact And.intro Ev.glucoseConsumedClosed (And.intro Ev.atpProducedClosed
    (And.intro Ev.nadhProducedClosed Ev.pyruvateProducedClosed))

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse