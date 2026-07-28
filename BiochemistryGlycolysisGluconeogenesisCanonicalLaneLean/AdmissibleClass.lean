import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure BiochemistryAdmittedObject where
  pathway : String
  enzymeSet : List String
  endpointProduct : String
  atpYield : Nat
  nadhYield : Nat
  conclusion : pathway = "glycolysis_gluconeogenesis"

structure AdmissibleClass where
  object : BiochemistryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse