import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure GlycolysisGluconeogenesisAdmittedObject where
  glycolysisFlux : Prop
  gluconeogenesisFlux : Prop
  regulationStatus : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmissibleClass where
  object : GlycolysisGluconeogenesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.glycolysisFlux ∧ A.object.gluconeogenesisFlux ∧ A.object.regulationStatus) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse