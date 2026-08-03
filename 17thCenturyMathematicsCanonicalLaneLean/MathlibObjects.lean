import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace SeventeenthCenturyMathematicsCanonicalLaneLean

structure SeventeenthCenturySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SeventeenthCenturyAdmittedObject where
  space : SeventeenthCenturySpace
  foundationalStatement : Prop
  conclusion : foundationalStatement

def SeventeenthCenturyWitnessClosed (O : SeventeenthCenturyAdmittedObject) : Prop :=
  O.foundationalStatement

end SeventeenthCenturyMathematicsCanonicalLaneLean
end HautevilleHouse