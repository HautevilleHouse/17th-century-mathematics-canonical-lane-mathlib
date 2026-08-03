import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.SeventeenthCenturyMathematicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace SeventeenthCenturyMathematicsCanonicalLaneLean

structure AdmissibleClass where
  object : SeventeenthCenturyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SeventeenthCenturyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end SeventeenthCenturyMathematicsCanonicalLaneLean
end HautevilleHouse