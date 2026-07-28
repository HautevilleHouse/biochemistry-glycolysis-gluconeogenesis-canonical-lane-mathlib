import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean

structure AllostericControlPackage where
  enzyme : String
  effector : String
  activation : Prop
  inhibition : Prop
  hillCoefficient : Float
  cooperativity : Prop

structure AllostericControlEvidence (A : AllostericControlPackage) where
  effectorBound : A.activation ∨ A.inhibition
  hillCoefficientClosed : A.hillCoefficient > 0.0

def AllostericControlClosed (A : AllostericControlPackage) : Prop :=
  (A.activation ∨ A.inhibition) ∧ A.hillCoefficient > 0.0

theorem allosteric_control_closed_from_evidence (A : AllostericControlPackage)
    (Ev : AllostericControlEvidence A) : AllostericControlClosed A := by
  exact And.intro Ev.effectorBound Ev.hillCoefficientClosed

end BiochemistryGlycolysisGluconeogenesisCanonicalLaneLean
end HautevilleHouse