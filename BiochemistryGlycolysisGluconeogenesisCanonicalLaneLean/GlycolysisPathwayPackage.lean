import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure GlycolysisPathwayPackage where
  hexokinaseActive : Prop
  phosphofructokinaseActive : Prop
  pyruvateKinaseActive : Prop
  glucoseToPyruvateFlux : Prop
  atpYield : Prop
  nadhYield : Prop

structure GlycolysisPathwayEvidence (P : GlycolysisPathwayPackage) where
  hexokinaseActiveClosed : P.hexokinaseActive
  phosphofructokinaseActiveClosed : P.phosphofructokinaseActive
  pyruvateKinaseActiveClosed : P.pyruvateKinaseActive
  glucoseToPyruvateFluxClosed : P.glucoseToPyruvateFlux
  atpYieldClosed : P.atpYield
  nadhYieldClosed : P.nadhYield

def GlycolysisPathwayClosed (P : GlycolysisPathwayPackage) : Prop :=
  P.hexokinaseActive ∧ P.phosphofructokinaseActive ∧ P.pyruvateKinaseActive ∧
  P.glucoseToPyruvateFlux ∧ P.atpYield ∧ P.nadhYield

theorem glycolysis_pathway_closed_from_evidence (P : GlycolysisPathwayPackage) (E : GlycolysisPathwayEvidence P) :
  GlycolysisPathwayClosed P := by
  exact And.intro E.hexokinaseActiveClosed (And.intro E.phosphofructokinaseActiveClosed
    (And.intro E.pyruvateKinaseActiveClosed (And.intro E.glucoseToPyruvateFluxClosed
      (And.intro E.atpYieldClosed E.nadhYieldClosed))))

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse