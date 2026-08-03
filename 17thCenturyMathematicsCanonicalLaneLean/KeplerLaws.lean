import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace _17thCenturyMathematicsCanonicalLaneLean

structure KeplerLawsPackage where
  ellipticalOrbits : Prop
  equalAreaEqualTime : Prop
  harmonicRelation : Prop

structure KeplerLawsEvidence (K : KeplerLawsPackage) where
  ellipticalOrbitsClosed : K.ellipticalOrbits
  equalAreaEqualTimeClosed : K.equalAreaEqualTime
  harmonicRelationClosed : K.harmonicRelation

def KeplerLawsClosed (K : KeplerLawsPackage) : Prop :=
  K.ellipticalOrbits ∧ K.equalAreaEqualTime ∧ K.harmonicRelation

theorem kepler_laws_closed_from_evidence (K : KeplerLawsPackage) (E : KeplerLawsEvidence K) :
    KeplerLawsClosed K := by
  exact And.intro E.ellipticalOrbitsClosed (And.intro E.equalAreaEqualTimeClosed E.harmonicRelationClosed)

end _17thCenturyMathematicsCanonicalLaneLean
end HautevilleHouse