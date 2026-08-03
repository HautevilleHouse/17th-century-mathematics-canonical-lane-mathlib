import HautevilleHouse.SeventeenthCenturyMathematicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace SeventeenthCenturyMathematicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SeventeenthCenturyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end SeventeenthCenturyMathematicsCanonicalLaneLean
end HautevilleHouse