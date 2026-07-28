import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure EnzymeKineticsPackage where
  enzyme : String
  substrate : String
  km : Float
  vmax : Float
  phOptimum : Float
  temperatureOptimum : Float
  allostericRegulated : Prop

structure EnzymeKineticsEvidence (E : EnzymeKineticsPackage) where
  kmClosed : E.km > 0.0
  vmaxClosed : E.vmax > 0.0
  phOptimumClosed : E.phOptimum > 0.0
  temperatureOptimumClosed : E.temperatureOptimum > 0.0

def EnzymeKineticsClosed (E : EnzymeKineticsPackage) : Prop :=
  E.km > 0.0 ∧ E.vmax > 0.0 ∧ E.phOptimum > 0.0 ∧ E.temperatureOptimum > 0.0

theorem enzyme_kinetics_closed_from_evidence (E : EnzymeKineticsPackage)
    (Ev : EnzymeKineticsEvidence E) : EnzymeKineticsClosed E := by
  exact And.intro Ev.kmClosed (And.intro Ev.vmaxClosed
    (And.intro Ev.phOptimumClosed Ev.temperatureOptimumClosed))

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse