import BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure GlycolysisGluconeogenesisTheorem where
  sourceKey : String
  theoremName : String
  pathwayRegulation : Prop
  fluxControl : Prop
  keyEnzymeRegulation : Prop

def defaultTheorem : GlycolysisGluconeogenesisTheorem := {
  sourceKey := "biochemistry-glycolysis-gluconeogenesis",
  theoremName := "GlycolysisGluconeogenesisFluxControl",
  pathwayRegulation := True,
  fluxControl := True,
  keyEnzymeRegulation := True
}

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse